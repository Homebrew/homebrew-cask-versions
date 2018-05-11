cask 'charles-beta' do
  version '4.2.6b2'
  sha256 '23951227fddd09f4663e45fa1e81205f332ec541049bcbb531119906dd8f257c'

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
