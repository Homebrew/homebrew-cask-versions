cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.17.5"
  sha256 arm:   "7a5b4c63e4db60bcfe89b379326bdd4453bc96825ffe1002b957f67510a11f69",
         intel: "5258d37ede400a8f68d84a2d17f0291e143fd81aa69a8ca2c1a7591bf1e36bdc"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
