cask 'vivaldi-snapshot' do
  version '1.0.385.5'
  sha256 'b98d71e6a06bebd678e94633ee503796d3aebc809380469626daf9f05b2cc043'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '712191cfc1f52fc893d00d7f43a20295c9f9bc7cd142ca9b7e82e2cd5aa071ea'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
