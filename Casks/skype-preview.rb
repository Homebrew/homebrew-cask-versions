cask "skype-preview" do
  version "8.70.76.48"
  sha256 "008ea9254aadba4d58a6bbc5d8702b0040fdf0edbfe930387a0991115ad83edf"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
