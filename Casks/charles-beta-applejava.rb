cask 'charles-beta-applejava' do
  version '3.11.3b4'
  sha256 '5bba5bbfdbed53925ab37a9cc1df943fd5dec8a63ac4f90a4966625baf7f43ce'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
