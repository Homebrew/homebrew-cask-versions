cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta24"
  sha256 arm:   "5c06703a72a9fe11f020458ada4187157a4a3f0bb614c115a553c07537955c20",
         intel: "cd09b35eb53fc165b8404530c656a001565934d7a83d45d3c49068f3b8bc0117"

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
