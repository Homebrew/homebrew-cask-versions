cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.7"
  sha256 arm:   "af3e08ea0b58cfb502ef850eb323a303d074adeeede96cc440aed27fb2459c7d",
         intel: "118d11824c754ac8107376a1669c34cabfbf690849f71a3e9be59f26835bd54d"

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
