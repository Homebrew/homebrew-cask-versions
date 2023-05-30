cask "brave-browser-nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  version "1.54.16.0,154.16"
  sha256 arm:   "e5256743f4cd65a1a5338054eac30df95c099e0ef02da5f38550e175198bdb11",
         intel: "5740ae97802644fba3fdbea89e4af97bfb76734932ff5ce59235cb5850385051"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Nightly-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brave Browser Nightly.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
