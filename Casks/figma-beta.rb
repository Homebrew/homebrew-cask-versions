cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.17"
  sha256 arm:   "1c1ef312891d60d6a37e33e4fd9b76aff9a0fd7774c47785971bf51ea21f51a8",
         intel: "2e67977683c52fe957a177f001e7c7842902f38c7b02cea0c02695dd711e3d21"

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
