cask "mumble-snapshot" do
  version "1.5.613"
  sha256 "c7db7c6a2f62cb79338f08b207646e9618537f1cfc6fba9e3554e8cd39bff0f9"

  url "https://dl.mumble.info/snapshot/mumble_client-#{version}.x64.dmg"
  name "Mumble Snapshot"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://mumble.info/"

  livecheck do
    url "https://dl.mumble.info/latest/snapshot/client-macos-x64"
    regex(/mumble[._-]client[._-](.+?)(?:\.x64|~snapshot)?\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["content-disposition"][regex, 1].tr("~", "_")
    end
  end

  conflicts_with cask: "mumble"
  depends_on macos: ">= :high_sierra"

  app "Mumble.app"

  zap trash: [
    "/Library/ScriptingAdditions/MumbleOverlay.osax",
    "~/Library/Application Support/Mumble",
    "~/Library/Logs/Mumble.log",
    "~/Library/Preferences/net.sourceforge.mumble.Mumble.plist",
    "~/Library/Saved Application State/net.sourceforge.mumble.Mumble.savedState",
  ]
end
