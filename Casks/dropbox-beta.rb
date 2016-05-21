cask 'dropbox-beta' do
  version '4.3.26'
  sha256 '7f9b35ee4075895ccb8a6b1d102d14b0ecd05d4a6faea0a1a13b5386753c8cd3'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/205703723-Beta-Build-4-3-26'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
