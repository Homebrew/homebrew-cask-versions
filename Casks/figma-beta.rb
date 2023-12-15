cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.16.1"
  sha256 arm:   "7de31b3c7a93a1d1ef2a67652b6dc26a04c10682967a7118ede8666a180011cd",
         intel: "94d77858b8c1d1573a8caf25daaa4e8fd1b731fb3fe9052cf01734e8733cfa20"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
