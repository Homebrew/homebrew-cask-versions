cask "keka-beta" do
  version "1.4.0-dev.r5279"
  sha256 "9d83ccef7c5f815f1ef91464370734acec20834b4af82e21f9f8f4e38eba1958"

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
