cask :v1 => 'charles-beta' do
  version '3.11b4'
  sha256 '075dd43c7845cc3eac548fee23b2ff9ad28c189b1cc0a347a7d68f0dc88d76a6'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
