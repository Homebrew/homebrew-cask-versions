cask :v1 => 'iterm2-beta' do
  version '2.9.20151001'
  sha256 '0bfb7fa52a69103f2d1779b3c0af9f443dbd5a249ea83f522a452d84dd605b23'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_9_20151001.zip'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
