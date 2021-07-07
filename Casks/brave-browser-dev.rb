cask "brave-browser-dev" do
  version "1.27.92.0,127.92"

  if Hardware::CPU.intel?
    sha256 "28e34fbc697d5c06e9782cf6a04126cf8cca259c85d00814853349500e71c535"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "cada1eea785695e9d70f9e1bcdf55ed87867162dca9dd287e7c1d4e95a11b64b"

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
