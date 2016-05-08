cask 'dropbox-beta' do
  version '3.19.35'
  sha256 'd8663c384227b49db952e3561f64a5d9459715199aec7bdf8a09cd7ff99bd230'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/205610373-Beta-Build-3-19-35'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
