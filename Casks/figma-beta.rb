cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.13.2"
  sha256 arm:   "bc79d7a2b480b108657fea27c973d3407417752cf7adfdf8756f38a6e8816b3b",
         intel: "7b8afe1d5c0bab4cd9a17e5444502204f6a9cf28eb1147151e3c815008e04654"

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
