cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.8.4"
  sha256 arm:   "32d36e8af2a81d5d32427d87e71443d8b245bf8187c67f22838f215c55f18faa",
         intel: "3020f0c7872c0b399e3dbc81464a41211c63ce579e0a3d9e4d3cd81e6feb611c"

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
