cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.3.5"

  if Hardware::CPU.intel?
    sha256 "a5e37de108288ed5aea27db5d51efe80b230aa82d3a8e459b7015cd13a6c9e7d"
  else
    sha256 "4ba3b691653fccd6f2fe9088d024fbf49ab6743534973b88a21196a6b70e08e1"
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
