cask "skype-preview" do
  version "8.69.76.49"
  sha256 "a18ff140a5b629de020562d12929aae5383fa0ce1fcacc66777bd19ddd1b4c94"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  homepage "https://www.skype.com/en/insider/"

  auto_updates true
  conflicts_with cask: "skype"

  app "Skype.app"
end
