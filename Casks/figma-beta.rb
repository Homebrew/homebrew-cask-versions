cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.12"
  sha256 arm:   "db5513a53154bd79278894d4d1080c9dd3f096cdeba30f2cfc493bf5c0b6590b",
         intel: "9c93d2a97398f8010f453326860b6c340d4eb5727f87c58b5fae58a07b6dd48e"

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
