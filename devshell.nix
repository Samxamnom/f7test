# Configure your development environment.
#
# Documentation: https://github.com/numtide/devshell
{ pkgs }:
with pkgs; devshell.mkShell {
  name = "android-project";
  motd = ''
    Entered the Android app development environment.
  '';
  env = [
    {
      name = "ANDROID_HOME";
      value = "${android-sdk}/share/android-sdk";
    }
    {
      name = "ANDROID_SDK_ROOT";
      value = "${android-sdk}/share/android-sdk";
    }
    {
      name = "JAVA_HOME";
      value = jdk.home;
    }
  ];
  packages = [
    android-sdk
    gradle
    jdk
    android-studio
    aapt
  ];
}
