cask "macpass-dev" do
  version :latest
  sha256 :no_check

  url "https://github.com/MacPass/MacPass/releases/download/continuous/MacPass-continuous.zip",
      verified: "github.com/MacPass/MacPass/"
  appcast "https://github.com/MacPass/MacPass/releases.atom"
  name "MacPass"
  desc "Open-source, KeePass-client and password manager (development version)"
  homepage "https://macpass.github.io/"

  auto_updates true
  depends_on macos: ">= :yosemite"
  conflicts_with cask: "macpass"

  app "MacPass.app"

  zap delete: [
    "~/Library/Application Support/MacPass",
    "~/Library/Caches/com.hicknhacksoftware.MacPass",
    "~/Library/Cookies/com.hicknhacksoftware.MacPass.binarycookies",
    "~/Library/Preferences/com.hicknhacksoftware.MacPass.plist",
    "~/Library/Saved Application State/com.hicknhacksoftware.MacPass.savedState",
  ]
end
