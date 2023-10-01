cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.4"
  sha256 arm:   "3e1c36dbedb69c381fc3c3b54a7c15d8d3b13d63a9cebf93590ed528686f6dce",
         intel: "2ee986f91364df4f372f80c1bda743204810ab531843546d05f6a585304a4025"

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
