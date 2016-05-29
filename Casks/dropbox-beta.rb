cask 'dropbox-beta' do
  version '4.3.28'
  sha256 '1577c4fa2abf0b00c45299c5c159e102e683828571d309874b8ccd3a64aeed92'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206821686-Beta-Build-4-3-28'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
