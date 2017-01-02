cask 'charles-beta' do
  version '4.1b2'
  sha256 'ae3e0cee8b60edc095c57c06217fbfd8527851781e2ff549f76a3bcd5fcf3788'

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
