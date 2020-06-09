cask 'sonos-s1' do
  version '11.2'
  sha256 '1a98300bd16bb2f727eb1921db80777cc23178a483d56b44a9bb5d95d9ea6602'

  url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sonos.com/en/redir/controller_software_mac',
          configuration: version.no_dots
  name 'Sonos'
  homepage 'https://www.sonos.com/'

  auto_updates true

  app 'Sonos S1 Controller.app'

  zap trash: '~/Library/Application Support/Sonos'
end
