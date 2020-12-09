cask "skype-preview" do
  version "8.55.0.135"
  sha256 "5c24605f89c5a88fa82c2652edf1926f5d9954c5d61e8bf9c55a895cfdc5817e"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
