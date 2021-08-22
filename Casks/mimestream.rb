cask "mimestream" do
  version "0.26.2"
  sha256 "0644cbb3d97b8b9a00bc31013a559a607e52a102e1d3e8a72b7f2dfe76583cd3"

  url "https://storage.googleapis.com/mimestream-releases/Mimestream_#{version}.dmg"
  name "mimestream"
  desc "Native macOS email client for Gmail"
  homepage "https://mimestream.com"

  app "Mimestream.app"

  livecheck do
    url "https:/mimestream.com/appcast.xml"
    strategy :sparkle
  end

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream",
  ]
end
