cask 'vivaldi-snapshot' do
  version '1.12.936.3'
  sha256 'e17847e682cd866ffc6af2386e0ab528e823c730339f3e8a03e4425bdfbf29fd'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '88d2d96f9cbeb0210b9d9282c570e8b901cfc7a02fa9b99424d040930e7a8b2c'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
