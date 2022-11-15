cask "sonos-s1-controller" do
  version "57.13-34140"
  sha256 "5462cf25cc94aa20863890b4091cf34a5290632b9ad8d73058f86e7d074e6309"

  url "https://update-software.sonos.com/software/kvlsprvs/Sonos_#{version}.dmg"
  name "Sonos S1"
  desc "Controller for Gen 1 Sonos products"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac"
    strategy :header_match
  end

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
