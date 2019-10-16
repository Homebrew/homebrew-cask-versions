cask 'alfred3' do
  version '3.8.4_968'
  sha256 '2a8932200e2208074465e5612fbd769ac830fc62155588635acf310ff776b298'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  appcast 'https://www.alfredapp.com/app/update/general.xml'
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: "com.runningwithcrayons.Alfred-#{version.major}"

  zap trash: [
               "~/Library/Application Support/Alfred #{version.major}",
               "~/Library/Caches/com.runningwithcrayons.Alfred-#{version.major}",
               "~/Library/Preferences/com.runningwithcrayons.Alfred-#{version.major}.plist",
               "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-#{version.major}.plist",
               "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-#{version.major}.savedState",
             ]
end
