cask 'charles-beta' do
  version '3.11.6b3'
  sha256 '07960cf8da976fb9ac78673bcbcee32a8c8dbda40cb3f9da790da832b73c02aa'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
