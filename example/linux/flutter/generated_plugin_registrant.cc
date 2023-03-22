//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ninja_theme/ninja_theme_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ninja_theme_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NinjaThemePlugin");
  ninja_theme_plugin_register_with_registrar(ninja_theme_registrar);
}
