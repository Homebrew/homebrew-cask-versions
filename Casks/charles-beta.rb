cask 'charles-beta' do
  version '4.2.1b2'
  sha256 'e181d152c8230308e6cc9bdc92f62ba8786f9ea860799bf0fb9a339670f7341a'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  app 'Charles.app'

  uninstall quit: 'com.xk72.Charles'

  zap delete: '~/Library/Saved Application State/com.xk72.Charles.savedState',
      trash:  [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.Charles.plist',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
