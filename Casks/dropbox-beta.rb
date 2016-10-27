cask 'dropbox-beta' do
  version '14.3.17'
  sha256 '8ff3430a77770e5c15c0e73dfb9a6a619d935a8e979bf1ec51d4e3f1b7a3b280'

  # dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/Beta-Build-14-3-17/m-p/192187'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
