cask '1password-beta' do
  version '6.6.3.BETA-3'
  sha256 '3c59d72e4b1dc1e0fb6d1e6a431dc4e5ba43517ac8906d8425da8efc619e0763'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  name '1Password'
  homepage 'https://agilebits.com/downloads'

  auto_updates true

  app "1Password #{version.major}.app"

  zap delete: [
                '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/com.agilebits.onepassword-osx',
                '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
              ]
end
