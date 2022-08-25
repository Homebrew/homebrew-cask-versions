cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.3.6"
  sha256 arm:   "e823f7ad7aad6f74712d9c68f7e82f81b87fac24be1cc8dada6e84f938a562a9",
         intel: "5501cf8a3f110cf282736472d71a99d4e1a078461188da0bc04d62cebbf574e5"

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
