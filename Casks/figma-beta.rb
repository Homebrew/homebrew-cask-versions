cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.7.1"
  sha256 arm:   "84743537362d561d8a37a745c4e813514e6879bcda0b6e759a6a5e99406281e8",
         intel: "0b53cfbc0d28f93a2f7609fefa23214089532e1e11d87f15926bb6f000e840fb"

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
