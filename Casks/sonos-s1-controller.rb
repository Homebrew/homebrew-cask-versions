cask "sonos-s1-controller" do
  version "11.3,57.10.25040"
  sha256 "ca58d868c0000ee72316a3ee52b9ea4c6d9eabb3d0e06c96fc8649b4975388b1"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.csv.first.no_dots}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    strategy :extract_plist
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
