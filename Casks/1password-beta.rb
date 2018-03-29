cask '1password-beta' do
  version '7.0.BETA-3'
  sha256 '1116d6b18cdf18fa532bdc5463e5a2767252ecb47a6015f407a2de9675180c3b'

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: '51b05534eaace042bdb613f473450b6cf951156667f2ee5b0d3b8f419e35ec93'
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
