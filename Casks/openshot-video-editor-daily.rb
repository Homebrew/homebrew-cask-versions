cask "openshot-video-editor-daily" do
  version "2.6.1,10112-670baa5a-46255e46"
  sha256 "03b4b9348410dbdb845fa4993870f8e018997b6f2e1891767e5aa83db1f2cc25"

  url "https://github.com/OpenShot/openshot-qt/releases/download/daily/OpenShot-v#{version.csv.first}-dev-daily-#{version.csv.second}-x86_64.dmg",
      verified: "github.com/OpenShot/openshot-qt/"
  name "OpenShot Video Editor (Daily Build)"
  desc "Cross-platform video editor"
  homepage "https://openshot.org/"

  livecheck do
    url "https://www.openshot.org/download/"
    regex(/OpenShot[._-]v?(\d+(?:\.\d+)+)[._-]dev[._-]daily[._-](.*)[._-]x86[._-]64\.dmg"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
