cask 'charles-applejava-beta' do
  version '4.1.1b1'
  sha256 '37a3b99ca83f799ba53caf5f634bcf45401753389557bde9fe6f9372f1b44d41'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
