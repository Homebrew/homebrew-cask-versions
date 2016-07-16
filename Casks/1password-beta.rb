cask '1password-beta' do
  version '6.5.BETA-9'
  sha256 '1a3bcdf4cf44c266d4ef2b3f5da18000a5aff53972c04212ffc8ff51e49c3000'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  name '1Password'
  homepage 'https://agilebits.com/downloads'
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
