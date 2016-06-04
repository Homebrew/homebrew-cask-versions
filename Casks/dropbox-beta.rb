cask 'dropbox-beta' do
  version '5.3.18'
  sha256 'a762c0ea383176ecacdee173f3dd96912c15ac84418469afaf88d8fc54f678e4'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206833706-Beta-Build-5-3-18'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
