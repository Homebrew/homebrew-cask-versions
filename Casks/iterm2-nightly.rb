cask 'iterm2-nightly' do
  version '2.9.20160420'
  sha256 '21cf84e58ea8725f23dbf5071c069d32bbb6a14d9d51558c4aebfcf40ddfceb2'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '40151318054c2d80fc6c3a1b7ba354f5525b6c98544d6e3dd2f0accc68e069b9'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
