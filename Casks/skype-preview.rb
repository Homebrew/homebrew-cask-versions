cask "skype-preview" do
  version "8.97.76.302"
  sha256 "d06e3d26d70c94992c6b6dede2823886965812e66681aa471e7708e4b037987d"

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
