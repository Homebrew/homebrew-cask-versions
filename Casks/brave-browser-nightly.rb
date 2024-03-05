cask "brave-browser-nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  version "1.65.53.0"
  sha256 arm:   "11e02ac2529c4e7655b73fd968ed05437c5a03b22a1a656aa0d868365c22fd91",
         intel: "917a3a2a7e959106633cdc535bba8b111ac805ea6afbd47cc8486a840d32982b"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Nightly-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
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
