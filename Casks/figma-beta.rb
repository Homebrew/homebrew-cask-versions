cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.17.7"
  sha256 arm:   "4b4e441df048989f605614cfcc8d70486e5e621d87f8fce3a2b21bac2fce4cda",
         intel: "bfc9304b9d244842992b566efe8f009c0a64ec5b60fddf4d54506312dd1e96f2"

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
