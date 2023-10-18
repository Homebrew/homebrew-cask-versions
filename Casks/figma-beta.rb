cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.15.0"
  sha256 arm:   "5f7b1043e17e7e25cba236201a15fabb5d4d0224dc83e7fd0023144faf349458",
         intel: "628eb0898c74a57f6a86ff4828bfaaf75781e56262308edf28396aafcca61c7d"

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
