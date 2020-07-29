cask "ableton-live-suite9" do
  version "9.7.7"
  sha256 "582547c75197e0f88cb4b88d579ce982f03a32cd2b48739fe3c77a516b49191d"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live 9 Suite"
  homepage "https://www.ableton.com/en/live/"

  app "Ableton Live #{version.major} Suite.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
