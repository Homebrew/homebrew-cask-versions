cask "ableton-live-intro10" do
  version "10.1.35"
  sha256 "c34c79ae350e14fdffab41cc5e95fb187023993cb470854916ce44e0be6b4445"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Intro"
  desc "Sound and music editor"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Ableton Live #{version.major} Intro.app"

  uninstall quit: "com.ableton.live"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Ableton *_*.plist",
    "~/Library/Application Support/CrashReporter/Live_*.plist",
    "~/Library/Application Support/Ableton",
    "~/Library/Caches/Ableton",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/com.ableton.live.plist*",
    "~/Music/Ableton",
  ]
end
