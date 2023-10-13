cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta23"
  sha256 arm:   "fad7103b6e41c60b40f652d955e6a40b1da230e7cf58cab87879ad34af59ac82",
         intel: "946fbadcb2054a031fbc811b2e5c1d85728b98beff59d0179021c47413012394"

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
