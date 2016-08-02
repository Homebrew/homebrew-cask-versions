cask 'dropbox-beta' do
  version '8.3.16'
  sha256 '9bd1c4fd0abfc3e4a71a2180b051ff3c8344315c82317befbb6c7601044091b2'

  # dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/209679306-Beta-Build-8-3-16'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
