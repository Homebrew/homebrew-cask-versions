cask "sonos-s1-controller" do
  version "11.2.12"
  sha256 "10e51eaae890a8a3f64efcc60b31c5ba88392e4dc031ae019912045700daac0a"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac",
          must_contain: version.no_dots
  name "Sonos S1"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
