cask "skype-preview" do
  version "8.70.76.76"
  sha256 "17e36b1bfdece461432bc8da77c2dc8c9646b452c88d1adc2b1d6eb095377c6c"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
