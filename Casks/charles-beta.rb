cask 'charles-beta' do
  version '4.1.4b3'
  sha256 'a55192d7f44960c42965d7c8f7926089dc8106b9b1553d8b4dec8abe65c29fbe'

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
