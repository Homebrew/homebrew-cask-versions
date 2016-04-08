cask 'iterm2-nightly' do
  version '2.9.20160408'
  sha256 'fb1d777d5416e7778a1095efb83d33911b523b5d7a01960b17f24d4c2988a405'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '9c7ef0adab7f701d165aa2da6d400563d24338aa3c624671d0c68beaf1888714'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
