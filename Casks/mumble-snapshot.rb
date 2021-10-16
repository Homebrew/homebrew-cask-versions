cask "mumble-snapshot" do
  version "1.4.0_2021-09-04_g37ee67716"
  sha256 "d66818e6e7f6775da70fc5fbafbe81a9f77b4a95282c3e3dfff65aca4db6cfb7"

  url "https://dl.mumble.info/snapshot/mumble_client-#{version.tr("_", "~")}~snapshot.dmg"
  name "Mumble Snapshot"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://mumble.info/"

  livecheck do
    url "https://dl.mumble.info/latest/snapshot/client-macos-x64"
    strategy :header_match
  end

  conflicts_with cask: "mumble"
  depends_on macos: ">= :high_sierra"

  app "Mumble.app"
end
