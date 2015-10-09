cask :v1 => 'charles-applejava' do
  version '3.11'
  sha256 '2943d8faa65671acdd3c04df34346126e9fab08d2770b700960fd134327be4d3'

  url "http://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/download/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end
