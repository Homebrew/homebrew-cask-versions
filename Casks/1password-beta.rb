cask '1password-beta' do
  version '6.3.BETA-5'
  sha256 '0bdd1b833d903cd080a0f1c567232e9d03b6ac025617e582879ab595c5e86e58'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  name '1Password'
  homepage 'https://1password.com'
  license :commercial

  auto_updates true

  app "1Password #{version.to_i}.app"

  zap delete: [
                '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                '~/Library/Containers/com.agilebits.onepassword-osx',
                '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
              ]
end
