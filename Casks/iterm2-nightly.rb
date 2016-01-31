cask 'iterm2-nightly' do
  version '2.9.20160131'
  sha256 'dd6692926e252edcccf00a7b96eb0fd3a56727e6a92207f472ad5d6903fe6c5d'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '8cf2341d40fcdbbd5ab46f351649a7f5a79d2eb287f06c19a78857ac9ef10050'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
