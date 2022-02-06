cask "figma-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "109.6.0"

  if Hardware::CPU.intel?
    sha256 "323eb52cee3cb2f1a138588643f09dc3cbbf8d339d747477704d2c686a73f2e4"
  else
    sha256 "ec4d189cb1e17b4b2d364440f6b63ac09f71dd0c14194219950140a467409977"
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
