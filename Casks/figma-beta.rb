cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.5.13"
  sha256 arm:   "d149140724b6c0e625cc57200340e0475446b8a92e190c953646d94b605aa3d8",
         intel: "d4e476960397e697c5781551eabc06d008dbf059c6b216bfdc92bf8749af10fb"

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
