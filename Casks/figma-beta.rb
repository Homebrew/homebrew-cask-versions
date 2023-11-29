cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.15.3"
  sha256 arm:   "6e6f7f1e90c465b97d10ca2638af7cc968f57155495d1d337fc189a4b110e36b",
         intel: "e6c832054334f4ac1cbb4d6c79d3e9f781390905cbb85c13149d7ac3a197ec5f"

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
