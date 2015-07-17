cask :v1 => 'charles-beta' do
  version '3.11b2'
  sha256 '878355debe41814ef35cac2fbf59fe6b98ad9e75b62a3db7d2358ca863f65ce6'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
