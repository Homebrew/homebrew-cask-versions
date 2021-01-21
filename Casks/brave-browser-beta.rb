cask "brave-browser-beta" do
  version "88.1.20.85,120.85"
  sha256 "2ba6a49f460fbbd2e14f56da79eb9c14d1b93e11ec9ebf5269fe619078e327f9"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
