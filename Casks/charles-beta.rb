cask 'charles-beta' do
  version '4.1.4b2'
  sha256 '49fe45febeaa15100ef92c98ee37a2452f5bcaa38e4f85a8864b8fe25dd403fb'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  depends_on macos: '>= :lion'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
