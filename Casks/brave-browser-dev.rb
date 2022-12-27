cask "brave-browser-dev" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "dev-arm64", intel: "dev"

  version "1.47.150.0,147.150"
  sha256 arm:   "41cf6a2c47ed36e2641b836b932df5b178474cc55b518eae08aa359021874833",
         intel: "4d0564923d978f99a0640d7e56ec0daaf59d97f8f8a0181da10325792cba33fd"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Dev-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
