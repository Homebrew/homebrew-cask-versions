cask "figma-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm"

  version "116.0.1"

  if Hardware::CPU.intel?
    sha256 "adcbb13f10a87084732bd9d03b426be456b8a414308b03f8747804f4649e21e7"
  else
    sha256 "065058fc45b628d50eeef15c49fb8d550ecff6d7de2ecf6088adf0efd6b983f2"
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
