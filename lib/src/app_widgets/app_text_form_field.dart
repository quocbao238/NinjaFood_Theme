part of app_widget;

class AppTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final bool obscureText;
  final String hintText;

  const AppTextFormField.password({
    super.key,
    this.prefixIcon,
    required this.hintText,
  }) : obscureText = true;

  const AppTextFormField.email({
    super.key,
    this.prefixIcon,
    required this.hintText,
  }) : obscureText = false;

  const AppTextFormField.phone({
    super.key,
    this.prefixIcon,
    required this.hintText,
  }) : obscureText = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          prefixIcon: AppPadding.medium(child: prefixIcon),
        ),
      ),
    );
  }
}
