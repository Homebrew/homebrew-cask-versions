cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.15.1"
  sha256 arm:   "4fa9a58a06a0b963c71b26af5190e3e342f53b9b3905370535b95db58f70444d",
         intel: "4ff4001427b7018c6c66fac6ed065f0630f8c6a24ffd6f06b73c4ea155beb57d"

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

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
