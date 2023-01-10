cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.6.0"
  sha256 arm:   "2331d1345b5a3e0da9f9ba74ca8681913844f2488e56ee03ff06eed4d7645a6f",
         intel: "a2b3a0448eeb0848ba76823d6c70fba37d23e7d2cd5f80bf06ed78dabebaed2c"

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
