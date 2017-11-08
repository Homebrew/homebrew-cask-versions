cask 'vivaldi-snapshot' do
  version '1.13.1008.11'
  sha256 '1a0a98c73134fe93bf7268a26d958779863c122888d3343347dc8a44750d5cf0'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '9ecb8c575518e43a8124ec3bcfb40a15af0a3f62918c1decbbecef4217af6111'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
