cask '1password-beta' do
  version '6.8.1.BETA-4'
  sha256 'f361e014bd4f64c0eb65b02087140665c2f208cf2bb76d37e0355968f83fe5d1'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: 'e3d0809dd28b05cbff4213481cb697e2fa40bde2110f9d410d13dc1ae1458abf'
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
