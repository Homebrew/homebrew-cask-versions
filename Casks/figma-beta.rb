cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.2"
  sha256 arm:   "2c038cd6aef4b17fb3f8dcb73934a4cff890c10bcdffc8999dfb44e49e6a2aeb",
         intel: "55f80169f9aeccc2ae4ef9dbeb5cc5e84a744abbeecde64cf64896cfebaa473d"

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
