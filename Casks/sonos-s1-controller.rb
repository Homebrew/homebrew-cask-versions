cask "sonos-s1-controller" do
  version "57.15-39070"
  sha256 "ac2bec77c3769a40e07093fa3b43bb6f357c2d8dabcfecabe37f9ad506d1327d"

  url "https://update-software.sonos.com/software/vghahcgk/Sonos_#{version}.dmg"
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
