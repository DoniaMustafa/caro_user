import 'package:caro_user_app/core/export/export.dart';
import 'package:caro_user_app/core/widgets/custom_background_widget.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/features/chat/presentation/pages/chat_page.dart';
import 'package:caro_user_app/features/orders/presentation/pages/my_orders_page.dart';
import 'package:caro_user_app/features/settings/presentation/pages/settings_page.dart';
import 'package:caro_user_app/features/short_ads/presentation/pages/short_ads_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../home/presentation/pages/home_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  late PersistentTabController _controller; // Declare the controller
  int _selectedIndex = 0; // Use a more descriptive name

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(
      initialIndex: _selectedIndex,
    ); // Initialize here
  }

  // It's good practice to dispose of controllers
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> buildScreens = [
    HomePage(),
    MyOrdersPage(),
    ShortAdsPage(),
    ChatPage(),
    SettingsPage(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "الاعدادات",
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.messenger),
        title: "الرسائل",
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: CustomNetworkImage.circular(
          imageUrl: AppAssets().reel,
          defaultAsset: AppAssets().reel,
          radius: 40,
        ),
        title: "ريلز",
        activeColorPrimary: AppColors.transparent,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: "طلباتي",
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "الرئيسيه",
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget.child(
      bottomNavigationBar: PersistentTabView(
        navBarHeight: 80.h,
        context,
        backgroundColor: AppColors.white,
        controller: _controller, // Use the stateful controller
        screens: buildScreens,
        items: _navBarsItems(),
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print(_selectedIndex);
        },
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10),
          colorBehindNavBar: AppColors.white200,
        ),
        // confineToSafeArea: true,
        handleAndroidBackButtonPress: true,
        navBarStyle: NavBarStyle.style16,
        padding: EdgeInsets.symmetric(vertical: 10),
        hideNavigationBarWhenKeyboardAppears: true,
        resizeToAvoidBottomInset:
            false, // Be mindful of this with keyboard interactions
      ),
      child: buildScreens[_selectedIndex],
    );
  }
}
