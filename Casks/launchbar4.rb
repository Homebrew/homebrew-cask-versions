cask 'launchbar4' do
  version '4.3.8'
  sha256 'd4f4a27fb989ff032390cb48be0072e38b56d3ae1929d7e717610c73d6da58fc'

  url "https://www.obdev.at/downloads/LaunchBar/legacy/LaunchBar-#{version}.dmg.gz"
  name 'LaunchBar'
  homepage 'https://www.obdev.at/products/launchbar/download-legacy.html'

  auto_updates true

  app 'LaunchBar.app'

  zap trash: [
               "~/Library/Application Support/LaunchBar #{version.major}",
               '~/Library/Caches/LaunchBar',
               "~/Library/Preferences/at.obdev.LaunchBar#{version.major}.plist",
               "~/Library/Saved Application State/at.obdev.LaunchBar#{version.major}.savedState",
             ]
end
