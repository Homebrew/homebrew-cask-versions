cask "skype-preview" do
  version "8.99.76.300"
  sha256 "d67908378ecfb129ae9e78c7a1400676fbfc2a0a4ba8cc1a6e7c5082d788c3f8"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/en/insider/"

  livecheck do
    url "https://go.skype.com/mac.preview.download"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"

  zap trash: [
    "~/Library/Application Support/Microsoft/Skype for Desktop",
    "~/Library/Caches/com.skype.s4l",
    "~/Library/Caches/com.skype.s4l.ShipIt",
    "~/Library/HTTPStorages/com.skype.s4l",
    "~/Library/Preferences/com.skype.s4l.plist",
  ]
end
