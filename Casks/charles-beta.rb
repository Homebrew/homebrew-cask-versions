cask 'charles-beta' do
  version '4.1.3b1'
  sha256 'c259a023070898367c31df63a7de69ea7940fa9a545a47dca550c373ce09c21a'

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
