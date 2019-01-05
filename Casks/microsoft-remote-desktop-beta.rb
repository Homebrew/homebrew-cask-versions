cask 'microsoft-remote-desktop-beta' do
  version '10.2.6.1523,256'
  sha256 '94feb54a3142650328ebc9a66ab74b995dab4b4a33e7f73c3b76d8d72a4423a9'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06'
  name 'Microsoft Remote Desktop Beta'
  homepage 'https://rink.hockeyapp.net/apps/5e0c144289a51fca2d3bfa39ce7f2b06/'

  auto_updates true

  app 'Microsoft Remote Desktop Beta.app'

  zap trash: [
               '~/Library/Preferences/com.microsoft.rdc.osx.beta',
               '~/Library/Caches/com.microsoft.rdc.osx.beta',
               '~/Library/Application Support/com.microsoft.rdc.osx.beta',
               '~/Library/Logs/Microsoft Remote Desktop Beta',
               '~/Library/Application Support/Microsoft Remote Desktop Beta',
             ]
end
