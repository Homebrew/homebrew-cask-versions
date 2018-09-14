cask 'charles-beta' do
  version '4.3b1'
  sha256 'd6fb174eb4ae798fcd02f2c7d42abdf58f10b9df23383aa7977cf6a68de5e966'

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
