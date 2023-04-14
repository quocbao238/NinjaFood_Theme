part of app_widget;

enum AppTextFormFieldType { email, password, phone, text }

class AppTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final bool? obscureText;
  final String hintText;
  final TextEditingController controller;
  final String? errorText;
  final TextStyle? textStyle;
  final AppTextFormFieldType _type;
  final InputDecoration? decoration;
  final bool? enabled;

  const AppTextFormField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.errorText,
        this.enabled,
      this.decoration,
        this.textStyle,
      required this.controller})
      : _type = AppTextFormFieldType.text;

  const AppTextFormField.password({
    super.key,
    required this.hintText,
    this.errorText,
    this.textStyle,
    this.enabled,
    this.decoration,
    required this.controller,
  })  : _type = AppTextFormFieldType.password,
        obscureText = true,
        prefixIcon = errorText == null ? const AppIcons.password() : const AppIcons.password(color: Colors.redAccent);

  const AppTextFormField.email({
    super.key,
    required this.hintText,
    this.errorText,
    this.textStyle,
    this.decoration,
    this.enabled,
    required this.controller,
  })  : _type = AppTextFormFieldType.email,
        obscureText = false,
        prefixIcon = errorText == null ? const AppIcons.email() : const AppIcons.email(color: Colors.redAccent);

  const AppTextFormField.phone({
    super.key,
    required this.hintText,
    this.errorText,
    this.textStyle,
    this.decoration,
    this.enabled,
    required this.controller,
  })  : _type = AppTextFormFieldType.phone,
        obscureText = false,
        prefixIcon = null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      enabled: enabled,
      obscureText: obscureText ?? false,
      inputFormatters: _type == AppTextFormFieldType.phone
          ? [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(11),
              PhoneNumberFormatter(),
            ]
          : [],
      style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      decoration: decoration ??
          InputDecoration(
            hintStyle: Theme.of(context).textTheme.labelLarge,
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefixIcon != null ? AppPadding.medium(child: prefixIcon) : null,
          ),
    );
  }
}
