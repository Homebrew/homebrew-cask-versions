cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.2"
  sha256 arm:   "4df5a1cf2abfa56e2a2442982f31d043b63b02cbea6140ff8bc7f9a6b4ce695e",
         intel: "27895df30889ab55ed8845a0d99123cf342424114d90e677edf624dd284b57a8"

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
