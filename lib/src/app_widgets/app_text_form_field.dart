part of app_widget;

class AppTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final bool obscureText;
  final String hintText;

  const AppTextFormField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      this.obscureText = false});

  const AppTextFormField.password({
    super.key,
    required this.hintText,
  })  : obscureText = true,
        prefixIcon = const AppIcons.password();

  const AppTextFormField.email({
    super.key,
    required this.hintText,
  })  : obscureText = false,
        prefixIcon = const AppIcons.email();

  const AppTextFormField.phone({
    super.key,
    required this.hintText,
  })  : obscureText = false,
        prefixIcon = const AppIcons.email();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.labelMedium,
        hintText: hintText,
        prefixIcon:
            prefixIcon != null ? AppPadding.medium(child: prefixIcon) : null,
      ),
    );
  }
}
