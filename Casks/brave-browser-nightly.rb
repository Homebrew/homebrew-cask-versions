cask "brave-browser-nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  version "1.59.62.0"
  sha256 arm:   "e65725034a8869b480558c74df98e409ad0dfed87f9710deb25048d59854d6e1",
         intel: "ae4599c11a7fe863dac5c43e1dde5ad55ebe0c38245d16563fa9fab7eb321a24"

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
