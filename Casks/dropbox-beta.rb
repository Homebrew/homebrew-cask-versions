cask 'dropbox-beta' do
  version '7.3.28'
  sha256 '15cbce268031a5db243fb231fb6dae32aa241fdd759bec6d929b9923952d35a9'

  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/207859986-Beta-Build-7-3-28'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
