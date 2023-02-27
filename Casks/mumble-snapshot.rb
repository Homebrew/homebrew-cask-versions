cask "mumble-snapshot" do
  version "1.5.517"
  sha256 "203daacd76b810c3a51c706e0082516435b6d86d4740eb15c9720b55a16e2bc1"

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
    "~/Library/Application Support/Mumble",
    "~/Library/Logs/Mumble.log",
    "~/Library/Preferences/net.sourceforge.mumble.Mumble.plist",
    "~/Library/Saved Application State/net.sourceforge.mumble.Mumble.savedState",
    "/Library/ScriptingAdditions/MumbleOverlay.osax",
  ]
end
