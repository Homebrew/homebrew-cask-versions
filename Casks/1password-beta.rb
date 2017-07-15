cask '1password-beta' do
  version '6.8.BETA-12'
  sha256 '24055c4652c6ef0d4d1d93e40770ff31584aa6a83278dcf62e399e47cffabf6c'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '90bf01df42dce670bdc25a5763465f8b94b41ea0404b828f7fd6f2a111c33a68'
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
