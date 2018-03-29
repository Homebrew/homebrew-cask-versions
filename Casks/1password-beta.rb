cask '1password-beta' do
  version '7.0.BETA-3'
  sha256 'e8a15236fe58aca9ee49ef212cf043d3cbd02423e39c5448ced3f32cb260bc83'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac7/1Password-#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/download/OPM7',
          checkpoint: '6b2c01a30d89571fba0ed4da630b0650f182a642d44c8097d90298caf2a705d1'
  name '1Password'
  homepage 'https://1password.com/downloads/'

  auto_updates true

  pkg "1Password-#{version}.pkg"

  uninstall pkgutil: 'com.agilebits.pkg.onepassword7'

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
