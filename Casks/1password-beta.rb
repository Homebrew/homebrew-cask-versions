cask '1password-beta' do
  version '7.0.BETA-16'
  sha256 '84c2cc23d0a9a4014f243e04a5b3ffc04b6bc595de881cdc526d8fecdae4054d'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: '9970834290c1c78302f9bd92232b3fa8dbda015a1a58ab93bad2b516c6415968'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
