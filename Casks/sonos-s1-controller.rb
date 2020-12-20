cask "sonos-s1-controller" do
  version "12.2.2"
  sha256 "c4eeba983d7f0fa6637b14a40abe40908b7db9e3bb4ef9d7cdb99cd1f4ec769d"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac",
          must_contain: version.no_dots
  name "Sonos S1"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
