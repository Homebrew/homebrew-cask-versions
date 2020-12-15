cask "skype-preview" do
  version "8.68.76.30"
  sha256 "0afa1e6bf45daf10ab7b762b54a0bc29055ddd9172eb147a045778b7b3b06f90"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
