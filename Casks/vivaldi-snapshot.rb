cask 'vivaldi-snapshot' do
  version '1.16.1170.3'
  sha256 '43c83f1f9287cd0f4b69ebbe7f1657f348bf38c1e072da79a7b6953454812e6c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '8fe29ddc25b908db3f9835aa18132167f51564fffa8bbf87672b0eea141b6466'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
