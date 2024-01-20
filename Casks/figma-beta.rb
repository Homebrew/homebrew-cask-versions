cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.16.6"
  sha256 arm:   "ec8f65a47a706850753a32e06b5fb4dd0ff37c1cc8974b342183a166e5db6c91",
         intel: "4c6d258202171efe35f0f540a32894bfb6009f266c0518015809d23b1080c368"

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
