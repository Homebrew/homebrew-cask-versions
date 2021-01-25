cask "skype-preview" do
  version "8.69.76.21"
  sha256 "565678da2cdafdc21dbfbe2ff037972c0a2b624703a6082a80fa615de99a6324"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
