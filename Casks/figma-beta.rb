cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.4"
  sha256 arm:   "17d5a75debc17ecac05dd638e659bc3a61abe26a5bb1d350226ecf80740b685b",
         intel: "9c05229cdb1456a10c6274760ddc6eb8ee05243429421275d150e99b8af9e04e"

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
