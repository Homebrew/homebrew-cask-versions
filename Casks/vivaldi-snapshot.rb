cask 'vivaldi-snapshot' do
  version '1.5.658.42'
  sha256 'c8831925f45e655c6c6332a2820456b621dfd52ebff8d5fa6a738c41a386a440'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '2fa69731030a1cce3f0000f17540865f3303502959e1cc526512874f35773230'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
