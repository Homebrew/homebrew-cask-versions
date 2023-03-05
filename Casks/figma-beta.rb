cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.7.102"
  sha256 arm:   "729556ca58aa72de316d934427a75c941d56322e26f343fbe9f395c6197e50c9",
         intel: "4deac68fe6fa4dcebe61b7aad9a8568af7e5ff1da0d685c7a04b5e5988697c87"

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
