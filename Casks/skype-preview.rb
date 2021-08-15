cask "skype-preview" do
  version "8.76.76.58"
  sha256 "bc00129d306382000ae6835b4f62c7e1df7691851e5c7ca7d23fbf03c5264df2"

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
