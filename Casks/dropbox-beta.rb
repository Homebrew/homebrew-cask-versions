cask 'dropbox-beta' do
  version '13.3.20'
  sha256 '9878049e52e8794358ca0375249d73e6337b3fa986bfddee012541fd868c0e41'

  # dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/Beta-Build-13-3-20/m-p/190627'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
