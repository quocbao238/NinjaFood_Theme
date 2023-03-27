part of app_widget;

class AppTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final bool? obscureText;
  final String hintText;
  final TextEditingController controller;
  final String? errorText;

  const AppTextFormField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.errorText,
      required this.controller});

  const AppTextFormField.password({
    super.key,
    required this.hintText,
    this.errorText,
    required this.controller,
  })  : obscureText = true,
        prefixIcon = errorText == null
            ? const AppIcons.password()
            : const AppIcons.password(color: Colors.redAccent);

  const AppTextFormField.email({
    super.key,
    required this.hintText,
    this.errorText,
    required this.controller,
  })  : obscureText = false,
        prefixIcon = errorText == null
            ? const AppIcons.email()
            : const AppIcons.email(color: Colors.redAccent);

  const AppTextFormField.phone({
    super.key,
    required this.hintText,
    this.errorText,
    required this.controller,
  })  : obscureText = false,
        prefixIcon = null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.labelLarge,
        hintText: hintText,
        errorText: errorText,
        prefixIcon:
            prefixIcon != null ? AppPadding.medium(child: prefixIcon) : null,
      ),
    );
  }
}
