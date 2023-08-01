cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta17"
  sha256 arm:   "41dd788989a4bc859a71fc94d268fbef80f59f321274b622284f04a9c2627367",
         intel: "1f20ae86c78c65be029e17c0e07a3c07cc9a780f4376f451f39fbdcd10f3ec48"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
