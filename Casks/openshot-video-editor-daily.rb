cask "openshot-video-editor-daily" do
  version "2.6.1,8946-3c8dc71b-2b8b05c7"
  sha256 "daac5ab0d46df7ed1fe20acf6626118628b6d7e888dcfd8cd5e95f0a3043434f"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-dev-daily-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    strategy :page_match do |page|
      match = page.match(/OpenShot[._-]v?(\d+(?:\.\d+)+)[._-]dev[._-]daily[._-](.*)[._-]x86[._-]64\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "openshot-video-editor"

  app "OpenShot Video Editor.app"
end
