cask 'vivaldi-snapshot' do
  version '1.14.1077.25'
  sha256 'e60727eb9ab5c954d3debc488e77ff5f3ecbee66e48f93f629d754783ee6038e'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'a74ac7a93615a39d80cc6d4e784aad736fa68f70239cf37486368c1041ca9314'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
