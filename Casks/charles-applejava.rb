cask 'charles-applejava' do
  version '3.12'
  sha256 'c1bdd06c6c429d12638d55c4f368758be458a8b7df4b7867b16c4e56d86b05c6'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
