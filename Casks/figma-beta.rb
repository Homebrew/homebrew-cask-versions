cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.14"
  sha256 arm:   "912eaa7f8d01c634cd3191faec74ae9af6388636c976070eac4063f0018b5db9",
         intel: "106b463633be758c6d4f4df87aef16004708b0100431df868d0f8f0b8a96ba00"

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
