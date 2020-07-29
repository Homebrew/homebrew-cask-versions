cask "dolphin-dev" do
  version "5.0-11518"
  sha256 "5dc9e3b0931f8ce0a3eb0bcafdc78565bdfbf3cfb7b39daebef8e69f3500da2f"

  url "https://dl.dolphin-emu.org/builds/75/70/dolphin-master-#{version}.dmg"
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
