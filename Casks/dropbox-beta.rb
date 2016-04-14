cask 'dropbox-beta' do
  version '3.17.32'
  sha256 '51783b80db28aae208d317362fa5541f41aa9a88ef285ccd591ac7d1a6a249c2'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204448313-Experimental-Build-3-13-52'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
