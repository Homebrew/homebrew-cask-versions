cask "openshot-video-editor-daily" do
  version "2.6.1,10636-5493ea9a-3ea45269"
  sha256 "98634a1ae207546fe612c31e9d616273b0a9cba6aa1b0c5edc8e5ce19f8fe27a"

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
