cask "openshot-video-editor-daily" do
  version "2.6.1,8946-3c8dc71b-2b8b05c7"
  sha256 "da40d4361810bf131cd06a1afe71e9a7a15918f2b154e1399db7306b2a3b72d3"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-dev-daily-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://github.com/OpenShot/openshot-qt/releases/tag/daily"
    strategy :page_match do |page|
      match = page.match(/OpenShot[._-]v?(\d+(?:\.\d+)+)[._-]dev[._-]daily[._-](.*)[._-]x86[._-]64\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "openshot-video-editor"

  app "OpenShot Video Editor.app"
end
