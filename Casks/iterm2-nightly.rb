cask 'iterm2-nightly' do
  version '2.9.20160516'
  sha256 'a25906ac8c23663e733bd9c22d4ecb8933e2eb7c06a6e46a5c1359adf634189f'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '8d975d1e2714cdceaa015ca309580242441ac736318a91640a32c0bb2ad4f139'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
