cask 'iterm2-nightly' do
  version '2.9.20160323'
  sha256 '68fcaa1c0040516f63b5a81e687423b6ef05ab2c498aa13b5fd726556d142cbe'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'c74ef61f40157fb3ee07b39c5086d754f7e437f8f9f855004736aff81d351d59'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
