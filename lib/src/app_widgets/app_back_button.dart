part of app_widget;

class AppButtonBack extends StatelessWidget {
  final VoidCallback? onPressed;
  const AppButtonBack({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (onPressed == null) return const SizedBox.shrink();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            top: ThemeSizes.medium,
            left: ThemeSizes.medium,
            bottom: ThemeSizes.regular),
        child: SizedBox(
          width: 45,
          height: 45,
          child: ElevatedButton(
            onPressed: () => onPressed?.call(),
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFF9A84D).withOpacity(0.1)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),

            child: const Center(child: AppIcons.back()),
          ),
        ),
      ),
    );
  }
}
