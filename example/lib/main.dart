import 'package:flutter/material.dart';
import 'package:ninja_theme/ninja_theme.dart';

void main() {
  DeviceHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData themeData = ThemePrimary.darkTheme();

  void toggleTheme() {
    themeData = themeData.brightness == Brightness.dark
        ? ThemePrimary.lightTheme()
        : ThemePrimary.darkTheme();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: AppViewLayout(
        tabletView: Container(),
        mobileView: AppScaffoldBackgroundImage.pattern(
          isLoading: false,
          appBarWidget: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButtonDrawer(onPressed: () {}),
              const Expanded(
                child: AppPadding.medium(
                    child: AppText.headlineSmall(
                  text: 'Find Your\nFavorite Food',
                )),
              ),
              AppButtonNotification(onPressed: () {}),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFilterButton(
                  onPressed: () {},
                ),

                AppButtonNotification(onPressed: () {}),

                AppTextFormField(
                  hintText: 'Search',
                  controller: TextEditingController(),
                ),

                // AppPadding.medium(
                //   child: AppTextFormField.email(
                //     controller: TextEditingController(),
                //     hintText: 'UserName',
                //     errorText: 'Error',
                //   ),
                // ),
                // AppPadding.medium(
                //   child: AppTextFormField.phone(
                //     controller: TextEditingController(),
                //     hintText: 'Phone',
                //   ),
                // ),
                //
                // AppPadding.medium(
                //     child: AppTextFormField.password(
                //         controller: TextEditingController(),
                //         errorText: 'Error',
                //         hintText: 'Password')),
                // // const AppPadding.medium(
                // //     child: AppTextFormField(hintText: 'PhoneNumber')),
                // AppPadding.medium(
                //     child: AppButton.max(title: 'Login', onPressed: () {})),
                AppButton.min(
                    title: 'Change Theme', onPressed: () => toggleTheme()),
                // const AppIcons.password(),
                // const AppIcons.password(),
                // const AppIcons.userProfile(),
                // const AppIcons.facebook(),
                // const AppIcons.payOneer(),
                // const AppIcons.paypal(),
                // const AppPadding.medium(child: AppLoading(isLoading: true)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
