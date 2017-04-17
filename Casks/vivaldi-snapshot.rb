cask 'vivaldi-snapshot' do
  version '1.9.811.13'
  sha256 '50621f67e66e243179d7be1bf84f29eb7be42766f33e2a15b42fd9bb74bb42aa'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'bb2d30b9837d3b432c9a4adb43fc84dd14db88ddd7c9b8503dc459230d8ab7a9'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
