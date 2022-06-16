cask "skype-preview" do
  version "8.85.76.401"
  sha256 "78167086d7fdc5e1e363f89062a2599a7e0655a874ec89ecbf6aa625e9f485fb"

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
