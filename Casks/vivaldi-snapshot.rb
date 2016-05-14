cask 'vivaldi-snapshot' do
  version '1.2.479.8'
  sha256 'f4f61fad3b9a30ed57a1e6df3cc6a294655ea21e17e8a580c54a797cc4b4824f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '38306b7f2db6d7289516fd9b8a8b8ce0df52472688b0e4865e2ba540df75a7ec'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
