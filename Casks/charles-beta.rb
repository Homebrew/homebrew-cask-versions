cask 'charles-beta' do
  version '4.2b6'
  sha256 '1a162d8b519cff51dc5b73d63e78c9df06763fe37a6a842ac3e7d662cabc1924'

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
