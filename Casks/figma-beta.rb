cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.7.4"
  sha256 arm:   "c2ab88924d8d39988c509f16c811b86eb5876e689a17f1a5f124bf3d7cdf1c6b",
         intel: "43f15872959017f2b8b4b4901199615afd0a6300b94cf1d04490c82d73255e01"

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
