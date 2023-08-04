cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta19"
  sha256 arm:   "4a286d1cab615c9697cdf752b693cccb67276b53a22d356517ef0fb004ef2434",
         intel: "e580c55d124c25104446aa5f5658aa2e355f69f88f78e7643bc1ed91b8809fad"

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
