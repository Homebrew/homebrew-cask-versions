cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.11.1"
  sha256 arm:   "c07eb401a47699a112a72dfd4342609c31ab0306e4f5b9a67ff41643d4f5e0da",
         intel: "28f458ca90b34ca548e2823a86928a864a02a1a13c6960e9d270b231d70093fd"

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
