cask "brave-browser-dev" do
  version "1.27.99.0,127.99"

  if Hardware::CPU.intel?
    sha256 "a012a7eccc855b4ad258745707a811205b48217246812db46897d8a8bde0ba20"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "59059acaba8d566c35be66220e45cbbef23d1b7d4ed549813d457d3e5546ffd7"

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
