import '../export/export.dart';

class ChachStorage {
  ChachStorage._();

  Future<void> initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    // If you have custom objects, register their adapters here:
    // Hive.registerAdapter(YourObjectAdapter());
  }

  ///********************cacheWrite*****************************\\\
  Future<ResponseModel> cacheWrite({
    required String boxName,
    required String key,
    required dynamic data,
    Function(dynamic data)? afterCaching,
    Map<String, dynamic> Function(dynamic data)? toJson,
  }) async {
    bool isCached = false;
    ResponseModel response;

    try {
      final box = await Hive.openBox('myCacheBox'); // Open your Hive box

      if (toJson.isNotNull && data is List) {
        // For lists of custom objects, convert to a list of JSON maps
        List<Map<String, dynamic>> list = data.map((e) => toJson!(e)).toList();
        await box.put(key, list);
        isCached = true;
      } else if (data is Map<String, dynamic>) {
        // For single custom objects (as Map<String, dynamic>)
        await box.put(key, data);
        isCached = true;
      } else if (data is bool) {
        await box.put(key, data);
        isCached = true;
      } else if (data is double) {
        await box.put(key, data);
        isCached = true;
      } else if (data is int) {
        await box.put(key, data);
        isCached = true;
      } else if (data is String) {
        await box.put(key, data);
        isCached = true;
      } else {
        // Handle unsupported types or throw an error if necessary
        debugPrint('Unsupported data type for caching: ${data.runtimeType}');
      }

      await box.close(); // Close the box after operation

      if (isCached.isTrue) {
        if (afterCaching.isNotNull) {
          afterCaching?.call(data);
        }
        response = ResponseModel(
          code: ResponseCode.CACHE_WRITE_SUCCESS,
          success: true,
          message: 'ResponseMessage().CACHE_WRITE_SUCCESS',
          data: isCached,
        );
      } else {
        response = ResponseModel(
          code: ResponseCode.CACHE_WRITE_ERROR,
          message:' ResponseMessage().CACHE_WRITE_ERROR',
          success: false,
          data: isCached,
        );
      }
    } catch (e) {
      debugPrint('Error writing to cache: <span class="math-inline">e');
      response = ResponseModel(
        code: ResponseCode.CACHE_WRITE_ERROR,
        message: '</span>{ResponseMessage().CACHE_WRITE_ERROR.trans}: $e',
        success: false,
        data: false,
      );
    }

    debugPrint('cached $isCached');
    return response;
  }

  ///********************cacheRead*****************************\\\

  Future<ResponseModel> cacheRead<T>({
    required String boxName,
    required String key,

    T Function(Map<String, dynamic>)? fromJson,
    Function(T?)? afterCaching,
  }) async {
    T? saveData;
    ResponseModel responseModel;

    try {
      final box = await Hive.openBox(boxName); // Open the same box

      if (!box.containsKey(key)) {
        await box.close();
        return ResponseModel(
          code: ResponseCode.NOT_FOUND_IN_CACHE,
          success: true, // It's not an error if it's just not found
          message: 'ResponseMessage().NOT_FOUND_IN_CACHE',
        );
      }

      final dynamic storedData = box.get(key);
      await box.close(); // Close the box

      if (storedData == null) {
        responseModel = ResponseModel(
          code: ResponseCode.CACHE_READ_ERROR,
          success: false,
          message: 'ResponseMessage().CACHE_READ_ERROR',
        );
      } else if (fromJson.isNotNull && storedData is Map<String, dynamic>) {
        // For custom objects that need fromJson
        saveData = fromJson!(storedData);
      } else if (fromJson.isNotNull && storedData is List) {
        // For lists of custom objects that need fromJson
        // Assuming 'T' here would be List<YourObject>
        // You'll need to map each item back using fromJson
        try {
          saveData =
              storedData
                      .map((e) => fromJson!(e as Map<String, dynamic>))
                      .toList()
                  as T;
        } catch (e) {
          debugPrint('Error mapping list during cache read: $e');
          // Handle error, maybe return null or an empty list
        }
      }
      // Hive can directly return the correct type for primitives if stored directly
      else if (T == bool && storedData is bool) {
        saveData = storedData as T;
      } else if (T == double && storedData is double) {
        saveData = storedData as T;
      } else if (T == int && storedData is int) {
        saveData = storedData as T;
      } else if (T == String && storedData is String) {
        saveData = storedData as T;
      } else {
        // Fallback for types that don't match the specific T checks,
        // or if T is dynamic and data was stored directly.
        // This handles cases where `storedData` is already of type `T`.
        // Be cautious with direct casting here, consider type checks if T is generic.
        if (storedData is T) {
          saveData = storedData;
        } else {
          debugPrint(
            'Type mismatch or unhandled type for cacheRead: Expected $T, Got <span class="math-inline">\{storedData\.runtimeType\}',
          );
          responseModel = ResponseModel(
            code: ResponseCode.CACHE_READ_ERROR,
            success: false,
            message:
                '</span>{ResponseMessage().CACHE_READ_ERROR.trans}: Type mismatch',
          );
          return responseModel;
        }
      }

      if (saveData != null) {
        responseModel = ResponseModel(
          code: ResponseCode.CACHE_READ_SUCCESS,
          success: true,
          message:' ResponseMessage().CACHE_READ_SUCCESS',
          data: saveData,
        );
        if (afterCaching.isNotNull) {
          afterCaching!(saveData);
        }
      } else {
        responseModel = ResponseModel(
          code: ResponseCode.CACHE_READ_ERROR,
          success: false,
          message: 'ResponseMessage().CACHE_READ_ERROR',
        );
      }
    } catch (e) {
      debugPrint('Error reading from cache: <span class="math-inline">e');
      responseModel = ResponseModel(
        code: ResponseCode.CACHE_READ_ERROR,
        message: '</span>{ResponseMessage().CACHE_READ_ERROR.trans}: $e',
        success: false,
      );
    }
    return responseModel;
  }

  ///********************clearCacheBox*****************************\\\

  Future<ResponseModel> clearCacheBox({required String boxName}) async {
    try {
      final box = await Hive.openBox(boxName);
      await box.clear();
      await box.close();

      debugPrint('Box "$boxName" cleared successfully.');
      return ResponseModel(
        code: ResponseCode.CACHE_CLEAR_SUCCESS,
        success: true,
        message: 'Cache for "$boxName" cleared successfully',
        data: true,
      );
    } catch (e) {
      debugPrint('Error clearing box "$boxName": $e');
      return ResponseModel(
        code: ResponseCode.CACHE_CLEAR_ERROR,
        success: false,
        message: 'Failed to clear cache for "$boxName": $e',
        data: false,
      );
    }
  }

  ///********************clearCacheKey*****************************\\\
}
