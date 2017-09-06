cask 'charles-beta' do
  version '4.2b3'
  sha256 '47120f0755c5a6036d7a4d9fe5d8d3088229ed4db6a62535965e6b42a43b3e08'

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
