cask :v1 => 'charles-beta-applejava' do
  version '3.11b4'
  sha256 'df208eae99ce74ab44ad1f61f0319ef1561b53301adf2be99efcfc6601cdf528'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
