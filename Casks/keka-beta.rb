cask "keka-beta" do
  version "1.4.0-dev.r5285"
  sha256 "fd76a98ed52ed3eb5d02ba47369dec0a4acc9705bcc6d4cf324c7c6843cb7970"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-v#{version}.7z",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/#beta"

  livecheck do
    url :url
    regex(/^v?((?:\d+(?:\.\d+)+)-(?:beta|dev)(?:\.\w?\d+)?)?/i)
  end

  auto_updates true
  conflicts_with cask: "keka"

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
