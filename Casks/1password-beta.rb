cask '1password-beta' do
  version '6.5.BETA-8'
  sha256 '783a1f8fb295ad600c87fc3341c9cf94194796905f08ba65a5bdebeac642af52'

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
