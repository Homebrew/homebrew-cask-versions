cask '1password-beta' do
  version '6.8.5.BETA-2'
  sha256 '403fce6ef8c18bfe8a8e086a50ac83ae4e28f01409da2c7c4197a33e94b7204a'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: '4ca0ce7d107be3c5229cb6be0860c7bdc230543490433e59a2a828bd65bab13b'
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
