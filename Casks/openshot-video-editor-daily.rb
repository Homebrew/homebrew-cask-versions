cask "openshot-video-editor-daily" do
  version "2.6.1,9005-49d6ba3b-2b8b05c7"
  sha256 "82ee71482ed45f0f77acac8d309a68b2a55d1ce21e0a2002ce99d8511ea2126f"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-dev-daily-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    strategy :page_match do |page|
      match = page.match(/OpenShot[._-]v?(\d+(?:\.\d+)+)[._-]dev[._-]daily[._-](.*)[._-]x86[._-]64\.dmg"/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "openshot-video-editor"
  depends_on macos: ">= :catalina"

  app "OpenShot Video Editor.app"

  zap trash: [
    "~/.openshot_qt",
    "~/Library/Application Support/openshot",
    "~/Library/Preferences/openshot-qt.plist",
  ]
end
