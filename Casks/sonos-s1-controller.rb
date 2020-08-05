cask "sonos-s1-controller" do
  version "11.2.2"
  sha256 "ca9d7cdbc8d60970cd4933cbdff3c7600acaa905dc38d131777cef26bdd6eef8"

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac",
          must_contain: version.no_dots
  name "Sonos S1"
  homepage "https://www.sonos.com/"

  auto_updates true

  app "Sonos S1 Controller.app"

  zap trash: "~/Library/Application Support/Sonos"
end
