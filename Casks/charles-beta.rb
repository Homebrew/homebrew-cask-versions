cask 'charles-beta' do
  version '4.2.1b3'
  sha256 'b5818d5df2fbf1991bb635c6b2ab0d7de8f63313fa8563958374e96fe6488b21'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  app 'Charles.app'

  uninstall quit: 'com.xk72.Charles'

  zap trash: [
               '~/Library/Application Support/Charles',
               '~/Library/Preferences/com.xk72.Charles.plist',
               '~/Library/Preferences/com.xk72.charles.config',
               '~/Library/Saved Application State/com.xk72.Charles.savedState',
             ]
end
