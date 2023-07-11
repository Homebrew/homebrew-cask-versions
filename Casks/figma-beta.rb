cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.12.0"
  sha256 arm:   "b26ed6bd41d2ecd3788c98895f30f2ab70267b3396834fefeace8bc76a554600",
         intel: "8cc80769d2ca4454d7b53bb223abe83b960b52c6af04a95c1ade379029b2cc2b"

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
