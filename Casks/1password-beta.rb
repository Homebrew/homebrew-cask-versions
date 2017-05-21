cask '1password-beta' do
  version '6.8.BETA-3'
  sha256 '3a875bb6b50a071dc5dd2ad1cc20cf4c6513ba2c69ee65118aa29e132a80ded3'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '8a58ba649363b0fc4aa5b1f1c6c59a2a07e3e686a5ee0851a7cb9e799461c6a1'
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
