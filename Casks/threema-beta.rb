cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta26"
  sha256 arm:   "190354d2750186c1a862cda4549897bc0719e8796ee18efaee52a2232051c095",
         intel: "174771f4e3ec571d040a17add27f2d889a99c4c7f4bbf8a402134a18d49b5b32"

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
