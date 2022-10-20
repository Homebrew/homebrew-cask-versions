cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.8"
  sha256 arm:   "ff6760b41397ab7cb2193d2c82164b308084041e9033dc49e93b35bc1a2d99ae",
         intel: "b0d65957295fe28346057b234949c0d9fb094a9bf86feb435cdc56294e03e891"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
