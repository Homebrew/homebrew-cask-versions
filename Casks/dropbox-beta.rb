cask 'dropbox-beta' do
  version '7.3.29'
  sha256 'b895827a9c0bce54a169048ae845a0602262c4fdff54b0c6cece8980ee579f44'

  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206689743-Beta-Build-7-3-29'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
