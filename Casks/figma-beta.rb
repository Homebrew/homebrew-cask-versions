cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.9.1"
  sha256 arm:   "422861648b4f77cade3c52e73fbc36b5c343fc76cda9458647631197196eb75e",
         intel: "f292b3085e895d094473137877ff154ab21343d3908f3fc45cf4ce575dd8b9ba"

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
