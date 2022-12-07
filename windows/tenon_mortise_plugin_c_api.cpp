#include "include/tenon_mortise/tenon_mortise_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tenon_mortise_plugin.h"

void TenonMortisePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tenon_mortise::TenonMortisePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
