cask "sonos-s1-controller" do
  version "11.2.3"
  sha256 "5176892eff5a52afe07a85a39d2b43438cf0c3b116b9e206e19d119d53ade901"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac",
          must_contain: version.no_dots
  name "Sonos S1"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
