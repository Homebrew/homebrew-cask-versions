cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.6"
  sha256 arm:   "e2f4e4cd0cb28e05d18d72e00114c9a47f644718023f5e9cec51b5009f3e4901",
         intel: "fe4b46dfd58bcb4566e09038180657cbdb0234849e0a9e15c512b7c47ff0a0be"

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
