cask "threema-beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta30"
  sha256 arm:   "3fd3d93b5b1ed1196079b75157f8a743d432a11944193723eb0ddfe835afa6d3",
         intel: "0c0f300de509e2b6cdf41ab898f0d8ec9798436221c7909af0b0822a1ffe2571"

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
