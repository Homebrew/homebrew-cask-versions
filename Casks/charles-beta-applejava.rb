cask 'charles-beta-applejava' do
  version '3.11.3b5'
  sha256 'd2ed58fc2e5d4a77c79932819edadb127f4963ea71b2c3843fc13946a02c0410'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
