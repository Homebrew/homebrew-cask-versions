cask 'dropbox-beta' do
  version '3.19.33'
  sha256 'b0c4af26aa11157dbff86921df2f5a9e7ee83336eb9eb479223ccc82fa739320'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/206565816-Beta-Build-3-19-33'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
