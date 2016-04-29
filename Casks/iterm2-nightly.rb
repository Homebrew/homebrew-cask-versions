cask 'iterm2-nightly' do
  version '2.9.20160429'
  sha256 'c03ef2496a7fb5cd21eaddd0f858a0285d31379c0156ec32c628079694a8d829'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '1390bd0e79b5030463935394764c0cb86c74155d92ab6197aaf7f6975197f301'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
