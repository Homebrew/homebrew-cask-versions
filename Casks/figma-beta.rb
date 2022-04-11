cask "figma-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "114.1.0"

  if Hardware::CPU.intel?
    sha256 "62160769914aee97fff73b7d0c76564d0e56936c5052e542c3a4fd28daa7b40b"
  else
    sha256 "095e120a5b7f4909f19c66212fcf9c5d2d900e96199d8c5e2a494b2092703d53"
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
