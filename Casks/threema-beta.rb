cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta27"
  sha256 arm:   "d61fea202eb92ad12d028f00a31a1ef4cf5c8e484d0a45cfbfb787d6f0a4df61",
         intel: "0dd1e877bfb96c6bdd74771b4126cc9b6fc93bd21697ee7bb578ac7987542c03"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
