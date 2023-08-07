cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.12.1"
  sha256 arm:   "db9ab38fcfa20eab82b86bd176f2624ded0a75f55a648a10d4c87e1a98d2d96e",
         intel: "af13829b08ff2947236541e01a119030e2f3bbc1a94319452090692d51717be8"

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
