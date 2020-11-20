cask "dolphin-dev" do
  version "5.0-13063"
  sha256 "01979155872158cea3ed00d67c35150cbaa6a64fc4c8e4a4f200dd5a85b37f07"

  url "https://dl.dolphin-emu.org/builds/7b/d1/dolphin-master-#{version}.dmg"
  name "dolphin-dev"
  homepage "https://dolphin-emu.org/"

  auto_updates true
  conflicts_with cask: "dolphin"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
