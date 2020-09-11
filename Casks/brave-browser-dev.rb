cask "brave-browser-dev" do
  version "85.1.15.48,115.48"
  sha256 "96fb62a907637a7857412c92f4a974afad4ec16917850115475f1d4a4624c6c4"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
  name "Brave Dev"
  homepage "https://brave.com/download-dev/"

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
