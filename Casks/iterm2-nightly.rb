cask 'iterm2-nightly' do
  version '2.9.20160405'
  sha256 'c078b82c8c61ac0a80a0ff44277a034f70603997de60ac794e8b5deec293c3ec'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'de2e7af8faafaf00682caa26872affc3b176380912433efdd917f489dd055d5d'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
