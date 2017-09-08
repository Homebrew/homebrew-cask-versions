cask 'vivaldi-snapshot' do
  version '1.12.953.8'
  sha256 'f6bff2154c271852c7e10c90175b622cf0bbe8ac19fe9b8d03b5d70e2b213f0d'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'bcf1d3a5ee324824c715932720dc3a24964727e30424f0be078605ad45972d2d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
