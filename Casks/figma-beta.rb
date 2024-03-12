cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.18.2"
  sha256 arm:   "6461efe850163865ea5c959779450732efd819aa5e11546d5b4571fcc2276629",
         intel: "c61bf0042df21e5d7d33de925976daa69da84c5282cfac1bd60558b572b50cf9"

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
