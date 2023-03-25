cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.8.2"
  sha256 arm:   "474667fbb12c2f418a14c5576096c04a593dba99873359edf650bc7484125675",
         intel: "6b2a40e06e87fc783eec39dcf2a83658debb155661b0c98067de4499c817b2c5"

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
