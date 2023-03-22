part of app_widget;

class AppButton extends StatelessWidget {
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final void Function()? onPressed;
  final String title;
  final double _ratio;

  const AppButton.min(
      {super.key,
      required this.title,
      this.padding,
      this.margin,
      this.onPressed}
      ): _ratio = 0.45;
  const AppButton.max(
      {super.key,
      required this.title,
      this.padding,
      this.margin,
      this.onPressed,
      }) : _ratio = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * _ratio;

    return Container(
      width: width,
      height: kToolbarHeight,
      margin: margin,
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: ThemeColors.gradientButtonColor,
            borderRadius: BorderRadius.circular(16)),
        child: ElevatedButton(
          onPressed: onPressed,
          child: FittedBox(child: Text(title,style: ThemeText.bodyMedium.copyWith(
            fontWeight: FontWeight.bold
          ),)),
        ),
      ),
    );
  }
}
