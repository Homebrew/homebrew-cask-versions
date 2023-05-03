cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.9.5"
  sha256 arm:   "8eecbd630a02796ed84f641169ddd1acba615b3b2d65dd19439ed32ea97decac",
         intel: "f46351eacbdeb0ca6ad6db7ac285fb19b4bc921aeef63a62ba7dae3d6cc2d6db"

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
