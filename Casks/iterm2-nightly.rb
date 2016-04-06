cask 'iterm2-nightly' do
  version '2.9.20160403'
  sha256 '7aeb775f7e23b7ae07e0cac621cddf5bbce147fdadbbbad88e27ff96b7480d1c'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '401635318f2b6950c6c7791376828ae7511bad7932b79935871ba8bb39c01348'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
