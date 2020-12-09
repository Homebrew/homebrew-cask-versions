cask "vox2" do
  version "2.8.26"
  sha256 "4d3c3a9e34ba55f5985940cab403aa2bd0057954cf6f954f1e33063111f4ca03"

  url "https://cloud.coppertino.com/vox/downloads/Vox_#{version}.zip",
      verified: "cloud.coppertino.com/vox/"
  name "VOX"
  homepage "https://vox.rocks/mac-music-player/old-versions"

  app "VOX.app"

  zap trash: [
    "~/Library/Containers/com.coppertino.Vox",
    "~/Library/Preferences/com.coppertino.Vox.plist",
  ]
end
