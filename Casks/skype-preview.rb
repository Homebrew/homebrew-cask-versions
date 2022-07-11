cask "skype-preview" do
  version "8.86.76.407"
  sha256 "c20ce6cc597f39ec4d5acf7d3bdd38cf6706362d27a77d02ac4829303f3bde6a"

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
end
