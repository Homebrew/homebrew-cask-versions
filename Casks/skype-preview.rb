cask "skype-preview" do
  version "8.70.76.62"
  sha256 "b57a68a721b3de27292f0d92d09877ab4534d512e2f41f9bffbcf35806381732"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
