part of app_widget;

class AppText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;

  final TextStyle _textStyle;

  const AppText.displayLarge({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.displayLarge;

  const AppText.displayMedium({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.displayMedium;

  const AppText.displaySmall({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.displaySmall;

  const AppText.headlineLarge({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.headlineLarge;

  const AppText.headlineMedium({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.headlineMedium;

  const AppText.headlineSmall({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.headlineSmall;

  const AppText.bodyLarge({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.bodyLarge;

  const AppText.bodyMedium({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.bodyMedium;

  const AppText.bodySmall({super.key, required this.text, this.textAlign, this.fontWeight, this.color})
      : _textStyle = ThemeText.bodySmall;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(text,
        textAlign: textAlign ?? TextAlign.center,
        style: _textStyle.copyWith(fontWeight: fontWeight, color: color ?? textTheme.bodySmall!.color));
  }
}
