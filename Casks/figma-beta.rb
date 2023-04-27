cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.9.3"
  sha256 arm:   "1164e4a55932fb0b285da30b4d6db9921b9fb622912841f3734aaebf6303bfd9",
         intel: "7f134f5dbe077034995529d11a2fe8397e08149da6d806f3007915338ff8275d"

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
