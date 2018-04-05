cask 'vivaldi-snapshot' do
  version '1.15.1146.5'
  sha256 'ce0173a9dfddf1a96f5516bc660261b617290b1efe35a322b200488951e93bd7'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '5a53aa5906f393abf4d5d482714f2fa8b30e7132d76910609d3e5faa2246bd07'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
