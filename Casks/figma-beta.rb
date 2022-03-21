cask "figma-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "111.0.0"

  if Hardware::CPU.intel?
    sha256 "535ba2d05c9fc29253e94aed20bb374e571c08dcfd26f347da43277971d105c1"
  else
    sha256 "8645fad85150ad9d78e855e946f1a8db1920871909079217da4cac97f604bac5"
  end

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
