cask 'dropbox-beta' do
  version '3.19.34'
  sha256 '724491bc6f14940aa883e82665845b72716a57d4235b3b837f87cd5ac0a01143'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206565816-Beta-Build-3-19-33'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
