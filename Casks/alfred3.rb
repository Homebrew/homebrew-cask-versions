cask 'alfred3' do
  version '3.8.2_963'
  sha256 'f5ed0056bfb149fe5eb06f11c720e09760ee20b05e95014da3d0998cdaf3338b'

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
