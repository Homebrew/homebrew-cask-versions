cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.3"
  sha256 arm:   "1d0b735b7878eb02f8259663f2cd4cd554afc02da91e2dc2a0310cf3fa225b07",
         intel: "d2d52085304617bab9086f7c8475a9babfd9ac48a73faba2b1b69b2ebaa3eac9"

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

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
