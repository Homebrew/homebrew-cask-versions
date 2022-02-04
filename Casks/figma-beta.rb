cask "figma-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "109.3.0"

  if Hardware::CPU.intel?
    sha256 "4783f34554cb651c8e31c4a3a7463476f173e144c6fa500c740a1817d0fe8e4d"
  else
    sha256 "3d923be394aabd92c59085c2d084dc5fe39db9c981ba5bfc43b2fc34c056e587"
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
