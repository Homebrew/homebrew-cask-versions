cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.18.4"
  sha256 arm:   "852e57a20c832e43847ee5336d2c8f7e47cf4a3f39f7715b8f0dbf66f97dff10",
         intel: "9ea259870ba878b8cbd391db52a6b3ae2c4a1a43ad95260eabe1654247e01d9f"

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
