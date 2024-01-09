cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta25"
  sha256 arm:   "7513eb848836f267e897d795488a554d7f7d2e8bc5d736421436d8ec08903f6e",
         intel: "8e7255073f04e98340fd62bff8c1c3c89442aca1f92c766be32dff71cca33198"

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
