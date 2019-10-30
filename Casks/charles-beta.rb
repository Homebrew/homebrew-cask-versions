cask 'charles-beta' do
  version '4.5.2b2'
  sha256 '90f3437c98e91be1558906234185cb19ab4111e89ddb83093c84e4ffd4207a89'

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
