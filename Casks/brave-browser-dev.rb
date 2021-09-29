cask "brave-browser-dev" do
  version "1.31.65.0,131.65"

  if Hardware::CPU.intel?
    sha256 "37a030107189782f68f1799e8926efa23bef78fcec5fcab9423d0792ec38d2a9"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "354fdaaf27d2909ca9845adb2e03190fe76b677b7c4a0273ca08d6ed006742da"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev-arm64/#{version.after_comma}/Brave-Browser-Dev-arm64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev-arm64/appcast.xml"
      strategy :sparkle
    end
  end

  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
