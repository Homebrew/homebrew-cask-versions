cask "brave-browser-dev" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "dev-arm64", intel: "dev"

  version "1.50.87.0,150.87"
  sha256 arm:   "cf4c011c7dfaf37c69669b06e1d2acac5b23b3fcaecf43661bb9a86faaf19eaf",
         intel: "2522708ed3c802a4d51e833cd3b2e76dfbdc3df4d1df2aec294b526af6ceda0a"

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
