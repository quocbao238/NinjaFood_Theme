part of app_widget;

class AppIcons extends StatelessWidget {
  final String _urlIcon;

  const AppIcons.email({super.key}) : _urlIcon = AppIconsAssets.email;

  const AppIcons.password({super.key}) : _urlIcon = AppIconsAssets.password;

  const AppIcons.userProfile({super.key})
      : _urlIcon = AppIconsAssets.userProfile;

  const AppIcons.checkbox({super.key}) : _urlIcon = AppIconsAssets.checkbox;

  const AppIcons.unCheckbox({super.key}) : _urlIcon = AppIconsAssets.unCheckbox;

  const AppIcons.facebook({super.key}) : _urlIcon = AppIconsAssets.facebook;

  const AppIcons.google({super.key}) : _urlIcon = AppIconsAssets.google;

  const AppIcons.gallery({super.key}) : _urlIcon = AppIconsAssets.gallery;

  const AppIcons.camera({super.key}) : _urlIcon = AppIconsAssets.camera;

  const AppIcons.yourLocation({super.key})
      : _urlIcon = AppIconsAssets.yourLocation;

  const AppIcons.viaEmail({super.key}) : _urlIcon = AppIconsAssets.viaEmail;

  const AppIcons.viaSMS({super.key}) : _urlIcon = AppIconsAssets.viaSMS;

  const AppIcons.menuHome({super.key}) : _urlIcon = AppIconsAssets.menuHome;

  const AppIcons.menuUser({super.key}) : _urlIcon = AppIconsAssets.menuUser;

  const AppIcons.menuCart({super.key}) : _urlIcon = AppIconsAssets.menuCart;

  const AppIcons.menuChat({super.key}) : _urlIcon = AppIconsAssets.menuChat;

  const AppIcons.notification({super.key})
      : _urlIcon = AppIconsAssets.notification;

  const AppIcons.search({super.key}) : _urlIcon = AppIconsAssets.search;

  const AppIcons.filter({super.key}) : _urlIcon = AppIconsAssets.filter;

  const AppIcons.sendMessage({super.key})
      : _urlIcon = AppIconsAssets.sendMessage;

  const AppIcons.volumeOn({super.key}) : _urlIcon = AppIconsAssets.volumeOn;

  const AppIcons.volumeOff({super.key}) : _urlIcon = AppIconsAssets.volumeOff;

  const AppIcons.edit({super.key}) : _urlIcon = AppIconsAssets.edit;

  const AppIcons.locationMap({super.key})
      : _urlIcon = AppIconsAssets.locationMap;

  const AppIcons.heart({super.key}) : _urlIcon = AppIconsAssets.heart;

  const AppIcons.back({super.key}) : _urlIcon = AppIconsAssets.back;

  const AppIcons.paypal({super.key}) : _urlIcon = AppIconsAssets.paypal;

  const AppIcons.visa({super.key}) : _urlIcon = AppIconsAssets.visa;

  const AppIcons.payOneer({super.key}) : _urlIcon = AppIconsAssets.payOneer;

  const AppIcons.success({super.key}) : _urlIcon = AppIconsAssets.successIcon;

  const AppIcons.close({super.key}) : _urlIcon = AppIconsAssets.close;

  @override
  Widget build(BuildContext context) =>
      SvgPicture.asset(_urlIcon, package: 'ninja_theme');
}
