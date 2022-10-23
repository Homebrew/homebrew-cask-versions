cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.10"
  sha256 arm:   "586641971c0bf3924c2eec389116fcfbb9d9c5a8fdf8c5bd96f629b831ceb519",
         intel: "1d057f46f32873a2a8a924615815905cd7fafa4f2822995bb2d6767ab8b183a6"

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
