cask "brave-browser-beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.51.87.0,151.87"
  sha256 arm:   "e0d3d812c16802839f52a161cf15c3230147f80f4646a466b66e63cea4436c47",
         intel: "c30a3e9b5bbd5d99cdc0a67cdccb6da8e751448474d46b3fa5787bf52e21c733"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
