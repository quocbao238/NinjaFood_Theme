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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String text = "Hello World";
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: AppViewLayout(
        tabletView: Row(
          children: [
            Expanded(
                child: AppScaffoldBackgroundImage.pattern(
              isLoading: false,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButtonBack(
                    onPressed: () {},
                  ),
                  AppText.displayLarge(text: text),
                  AppText.displayMedium(text: text),
                  AppText.displaySmall(text: text),
                  AppText.headlineLarge(text: text),
                  AppText.headlineMedium(text: text),
                  AppText.headlineSmall(text: text),
                  AppText.bodyLarge(text: text),
                  AppText.bodyMedium(text: text),
                  AppText.bodySmall(text: text),
                  const AppPadding.regular(child: AppErrorWidget()),
                  const AppPadding.medium(child: AppLoading(isLoading: true)),
                ],
              ),
            )),
            SizedBox(
              width: 1,
              height: DeviceHelper.size.height,
              child: const ColoredBox(
                color: Colors.greenAccent,
              ),
            ),
            Expanded(
                child: AppScaffoldBackgroundImage.splash(
              isLoading: false,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButtonBack(
                    onPressed: () {},
                  ),
                  const AppPadding.medium(
                      child: AppTextFormField.email(hintText: 'UserName')),
                  const AppPadding.medium(
                      child: AppTextFormField.password(hintText: 'Password')),
                  AppPadding.medium(
                      child: AppButton.max(title: 'Login', onPressed: () {})),
                  AppButton.min(
                      title: 'Change Theme', onPressed: () => toggleTheme()),
                  const AppIcons.password(),
                  const AppIcons.userProfile(),
                  const AppIcons.facebook(),
                  const AppIcons.payOneer(),
                  const AppIcons.paypal(),
                  const AppPadding.medium(child: AppLoading(isLoading: true)),
                  AppIcons.viaSMS()
                ],
              ),
            ))
          ],
        ),
        mobileView: AppScaffoldBackgroundImage.splash(
          isLoading: false,
          onPressBackButton: () {},
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText.displayLarge(text: text),
                AppText.displayMedium(text: text),
                AppText.displaySmall(text: text),
                AppText.headlineLarge(text: text),
                AppText.headlineMedium(text: text),
                AppText.headlineSmall(text: text),
                AppText.bodyLarge(text: text),
                AppText.bodyMedium(text: text),
                AppText.bodySmall(text: text),
                const AppErrorWidget(),
                const AppPadding.medium(
                    child: AppTextFormField.email(hintText: 'UserName')),
                const AppPadding.medium(
                    child: AppTextFormField.password(hintText: 'Password')),
                const AppPadding.medium(
                    child: AppTextFormField(hintText: 'PhoneNumber')),
                AppPadding.medium(
                    child: AppButton.max(title: 'Login', onPressed: () {})),
                AppButton.min(
                    title: 'Change Theme', onPressed: () => toggleTheme()),
                const AppIcons.password(),
                const AppIcons.password(),
                const AppIcons.userProfile(),
                const AppIcons.facebook(),
                const AppIcons.payOneer(),
                const AppIcons.paypal(),
                const AppPadding.medium(child: AppLoading(isLoading: true)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
