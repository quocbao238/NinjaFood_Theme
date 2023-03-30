
part of app_buttons;


class AppButtonNotification extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppButtonNotification({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (onPressed == null) return const SizedBox.shrink();

    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: AppPadding(
        padding: const AppEdgeInsets.only(
            top: AppGapSize.paddingMedium,
            left: AppGapSize.paddingMedium,
            right: AppGapSize.paddingMedium,
            bottom: AppGapSize.regular),
        child: SizedBox(
          width: 45,
          height: 45,
          child: ElevatedButton(
              onPressed: () => onPressed?.call(),
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor:
                isDark ? null : MaterialStateProperty.all(Colors.white),
                shadowColor: MaterialStateProperty.all(Colors.white70),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: const AppIcons.notification()),
        ),
      ),
    );
  }
}
