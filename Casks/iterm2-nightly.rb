cask 'iterm2-nightly' do
  version '3.0.20160601'
  sha256 '8ba8702fd53992e37d6e448ce233e46c08108498b3487578e4c3acffeaf86083'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '937f5b2d3cac745dd4a0408f3f71c8e463fcfbeb3bcca956de3ed5bb230644b4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
