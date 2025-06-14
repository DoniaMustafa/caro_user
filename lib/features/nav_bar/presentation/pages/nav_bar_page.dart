import 'package:caro_user_app/core/utils/app_colors.dart';
import 'package:caro_user_app/core/utils/assats_file.dart';
import 'package:caro_user_app/core/widgets/custom_network_image.dart';
import 'package:caro_user_app/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

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

  // Define your screens. Replace SignupPage() with your actual screen widgets.
  List<Widget> _buildScreens() {
    return [
      SignupPage(), // Replace with actual screen for "Settings"
      SignupPage(), // Replace with actual screen for "Messages"
      SignupPage(), // Replace with actual screen for "Reels"
      SignupPage(), // Replace with actual screen for "My Orders"
      SignupPage(), // Replace with actual screen for "Home"
    ];
  }

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
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"), // Consider adding a title
      ),
      bottomNavigationBar: PersistentTabView(
        context,
        controller: _controller, // Use the stateful controller
        screens: _buildScreens(),
        items: _navBarsItems(),
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index; // Update the state
            // The PersistentTabView will handle controller.jumpToTab(index)
            // and the icon colors will update automatically based on active/inactiveColorPrimary
          });
          print(_selectedIndex);
        },
        decoration: NavBarDecoration(borderRadius: BorderRadius.circular(10)),
        confineToSafeArea: true,
        handleAndroidBackButtonPress: true,
        navBarStyle: NavBarStyle.style15,
        hideNavigationBarWhenKeyboardAppears: true,
        resizeToAvoidBottomInset:
            false, // Be mindful of this with keyboard interactions
      ),
    );
  }
}
