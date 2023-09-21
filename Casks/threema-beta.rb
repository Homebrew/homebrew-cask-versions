cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta22"
  sha256 arm:   "eacd8763877dea5aab328c1621c09101be7be36571e5124c65529b51c1c44390",
         intel: "5635c808f25f97f2fc0b67636fd962f4b338381832ea01cc619dc0c7e2207d7e"

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
