cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.4.1"
  sha256 arm:   "3b7f9671d19e90a1d00167e39f4d535ad2bc457faa1dc1d13bd0934a82a991e5",
         intel: "9b06df0ed3fe4c7ee22d41f0487d800130372d9e4c31ead9e2e522e4715b8cb5"

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
