cask 'charles-applejava' do
  version '3.12.2'
  sha256 'b413337e5b180a45cc4263cf3d98dbf2db5ebe154920a9cbcd41fd4a118b575d'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/'

  app 'Charles.app'

  zap trash: [
               '~/Library/Application Support/Charles',
               '~/Library/Preferences/com.xk72.charles.config',
             ]
end
