cask 'iterm2-nightly' do
  version '2.9.20160430'
  sha256 'bc4146b9bae3e94dc8e880b513332b6da74141f020f7a32a71b3a140009c0cfa'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '500b0cf67d3b29c1d9d0f50cf70f602b4c1d883823c5ddcb18bb79bc51d462e7'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
