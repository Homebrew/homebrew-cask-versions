cask :v1 => 'iterm2-beta' do
  version '2.9.20150830'
  sha256 '3248adc0281c03d5d367e042bcc373ae673bf5eea55fe181169e5824c8379e42'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_9_20150830.zip'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
