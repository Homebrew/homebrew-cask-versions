cask "brave-browser-beta" do
  version "1.28.100.0,128.100"

  if Hardware::CPU.intel?
    sha256 "498310a7abbd487d9bf8c0ecc9a2f03a452db650731356b1e2a5103b07a2adc7"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "339401b7151a8719af06284cdf54423c024d378fbcb5e1b903ed9153508a35af"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta-arm64/#{version.after_comma}/Brave-Browser-Beta-arm64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta-arm64/appcast.xml"
      strategy :sparkle
    end
  end

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
