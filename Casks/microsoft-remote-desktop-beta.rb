cask 'microsoft-remote-desktop-beta' do
  version '10.2.8.1570,269'
  sha256 '6bfe6aaf86994f87088710692b8e3aa95dcbd182bd8622b729437d62fedda723'

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
