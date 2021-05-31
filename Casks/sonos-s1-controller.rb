cask "sonos-s1-controller" do
  version "11.2.9"
  sha256 "5a11c988deeba3625f25f8ce89699fcff2bd8c78b6437f8bc9481741c8c32829"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac",
          must_contain: version.no_dots
  name "Sonos S1"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
