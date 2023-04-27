part of app_widget;

class AppScaffoldBackgroundImage extends AppScaffold {
  final VoidCallback? onPressBackButton;
  final String _backgroundUlr;
  final bool wrapBodyWithSafeArea;

  const AppScaffoldBackgroundImage.splash({
    super.key,
    this.onPressBackButton,
    required super.body,
    super.isLoading = false,
    this.wrapBodyWithSafeArea = true,
    super.floatActionButton,
  }) : _backgroundUlr = AppImageAssets.backgroundSplash;

  const AppScaffoldBackgroundImage.pattern({
    super.key,
    this.onPressBackButton,
    required super.body,
    super.appBarWidget,
    this.wrapBodyWithSafeArea = true,
    super.isLoading = false,
    super.floatActionButton,
  }) : _backgroundUlr = AppImageAssets.backgroundPattern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: floatActionButton,
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
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        appBarWidget != null
                            ? appBarWidget!
                            : AppButtonBack(onPressed: onPressBackButton),
                        Expanded(
                            child: wrapBodyWithSafeArea
                                ? SafeArea(child: body)
                                : body)
                      ])),
                  Positioned.fill(
                      child: Center(child: AppLoading(isLoading: isLoading))),
                ]))));
  }
}
