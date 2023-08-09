cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.13.0"
  sha256 arm:   "662ef6d2ba2d5551a3b5fcc55d14c2c2d34d81709993ba85aed769d5389e1307",
         intel: "6d9ea8d320ec064ceff96b83f57a51956b86d04ff44df15ae35892384051917a"

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
