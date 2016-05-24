cask 'vivaldi-snapshot' do
  version '1.2.490.3'
  sha256 'e77df0065d888489536af964d4868bb7ee4ef331a467c9d6c6e55c85468e3ade'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '64592dcbba35208b7f975a4a91bcf756723b02bcfdca86a3e72c9316f20822a5'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
