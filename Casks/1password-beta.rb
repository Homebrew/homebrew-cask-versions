cask '1password-beta' do
  version '7.0.BETA-4'
  sha256 '7dc3c4e6945c334ba3efc5d5b8fe7413ea6474fd2fa05617ecc5462fa2bc60bf'

  # c.1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac7/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM7',
          checkpoint: 'a17dd1e624c82653f775ca7870f8ba244e8e4077282156457646d1cbbab95bc1'
  name '1Password'
  homepage 'https://1password.com/downloads'

  auto_updates true

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
