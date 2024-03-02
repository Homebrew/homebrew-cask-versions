cask "figma-beta" do
  arch arm: "mac-arm", intel: "mac"

  version "116.17.8"
  sha256 arm:   "a707e119f8e6688618cc0629f88c4c8dc543c01c3c5fb475f7e09e5d707f6eea",
         intel: "88c454029e80967d96ec566447ca05fb284cd370c1375511fac7ec2bfd06b1c9"

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
