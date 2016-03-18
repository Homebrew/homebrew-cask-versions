cask 'charles-beta-applejava' do
  version '3.11.5b3'
  sha256 'a566d0ef0dd923daff1ae707363c3d975cba26c30c02dd0eb8d9e402cacd6efe'

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(%r{b\d$}, '')}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/download/beta/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
