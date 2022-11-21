cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.18"
  sha256 arm:   "e5ecff1e893ed78f9d9937b0dc5af7b4b7b381e499d014a89e81fb1f89355819",
         intel: "d512c9a9f593713349eba90feba214d98cd4027989b217a84c2540b85e48b176"

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
