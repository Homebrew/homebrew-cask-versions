cask 'dropbox-beta' do
  version '10.3.20'
  sha256 '38f4b1980392ee68030e420e1540be71e7b2db97eb04dd843274a723a8731e0a'

  # dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/208785043-Beta-Build-10-3-20'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
