cask '1password-beta' do
  version '7.0.BETA-7'
  sha256 'cace01620f7245cb4affacbfc8e7c0c289615459f4985b82130028abac9eef8f'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: 'c72d3f08e636a2031bfcaf9c1e5ff2d5bb8fba2092bafe9881da3898a3852d3f'
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
