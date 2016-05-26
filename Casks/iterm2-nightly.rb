cask 'iterm2-nightly' do
  version '2.9.20160525'
  sha256 '1b2f35c570f75025f388dbd131085b8a74cc55dfd10a305198dd98a502c3d8d1'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '488a0bf718a4c11693e5cc1502f764a8aa4b368132136088f13556b932e15a34'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
