cask 'vivaldi-snapshot' do
  version '1.14.1077.39'
  sha256 '8632f7868cf5e4268e3677c84f953d0c0a783ee4e145e6e212210f973a208696'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '42c5dfab11a4d2ca24c0ed460092d31f1be728e003f72b0db42483626ed0a3df'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
