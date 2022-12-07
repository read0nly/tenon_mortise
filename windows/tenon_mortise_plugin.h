#ifndef FLUTTER_PLUGIN_TENON_MORTISE_PLUGIN_H_
#define FLUTTER_PLUGIN_TENON_MORTISE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace tenon_mortise {

class TenonMortisePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TenonMortisePlugin();

  virtual ~TenonMortisePlugin();

  // Disallow copy and assign.
  TenonMortisePlugin(const TenonMortisePlugin&) = delete;
  TenonMortisePlugin& operator=(const TenonMortisePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace tenon_mortise

#endif  // FLUTTER_PLUGIN_TENON_MORTISE_PLUGIN_H_
