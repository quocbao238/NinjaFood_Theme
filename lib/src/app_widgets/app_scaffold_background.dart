part of app_widget;

class AppScaffoldBackgroundImage extends AppScaffold {
  final VoidCallback? onPressBackButton;
  final String _backgroundUlr;
  final VoidCallback? onPressDrawer;

  const AppScaffoldBackgroundImage.splash({
    super.key,
    this.onPressBackButton,
    required super.body,
    super.isLoading = false,
  })  : _backgroundUlr = AppImageAssets.backgroundSplash,
        onPressDrawer = null;

  const AppScaffoldBackgroundImage.pattern({
    super.key,
    this.onPressBackButton,
    required super.body,
    super.isLoading = false,
  })  : _backgroundUlr = AppImageAssets.backgroundPattern,
        onPressDrawer = null;

  const AppScaffoldBackgroundImage.patternWithDrawer({
    super.key,
    required super.body,
    required this.onPressDrawer,
    super.isLoading = false,
  })  : _backgroundUlr = AppImageAssets.backgroundPattern,
        onPressBackButton = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppSizeScale(
            ratioWidth: 1,
            ratioHeight: 1,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(_backgroundUlr, package: 'ninja_theme'),
                        fit: BoxFit.fill)),
                child: Stack(children: [
                  Positioned.fill(
                      child: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppButtonBack(onPressed: onPressBackButton),
                          Expanded(child: body)
                        ]),
                  )),
                  Positioned.fill(
                      child: Center(child: AppLoading(isLoading: isLoading))),
                ]))));
  }
}
