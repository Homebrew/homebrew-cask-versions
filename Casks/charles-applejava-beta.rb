cask 'charles-applejava-beta' do
  version '3.11.6'
  sha256 '9db6b051a6757e6c20542328c1ea3d82aa2dd1d13544c0db905ac1f384117947'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
