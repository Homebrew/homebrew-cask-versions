cask '1password-beta' do
  version '6.8.BETA-5'
  sha256 '1774e6219d2e4044dcdd7a05966e39a47590af8c829415a4bd8fddf3d239d96e'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '64754b0317250fc62c8167bba2610842349566cda8be738452aead94a130597b'
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
