cask '1password-beta' do
  version '6.8.6'
  sha256 '8a2e922d3fbf0cafcf530301b1d5db315fc37fb5ac5c732feecbc0b6190a47d9'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '3d8108f7ec801f308b2bf7de4fea46fb7f84535d217d25c1c616360197907dbe'
  name '1Password'
  homepage 'https://agilebits.com/downloads'

  auto_updates true

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
