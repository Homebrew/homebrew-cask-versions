cask 'dropbox-beta' do
  version '5.3.20'
  sha256 '354a9e70923c0f0a9b0553dbe4925596d663d9c465f661add72d1dde2f6caa40'

  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206873686-Beta-Build-5-3-20'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
