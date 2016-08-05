cask 'vivaldi-snapshot' do
  version '1.3.551.17'
  sha256 '6f5ed23b2d0358ead2bdbd134bb2c6c6396749102cdc04dfc8bdc09007f119c4'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'effc6d5a62a491cf59149004de3560001596a960af606adab9574a91920ea78e'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
