cask 'microsoft-remote-desktop-beta' do
  version '8.2.35.798,134'
  sha256 '223378a1f926d22e1ea941dfd9af1398b4bcd91ef6ce26bd2901f30fe0a11587'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06',
          checkpoint: '076feac1ac363712014a5cdd1904bce60906fe9a74baf06cbcd8706b8e22d8d7'
  name 'Microsoft Remote Desktop Beta'
  homepage 'https://rink.hockeyapp.net/apps/5e0c144289a51fca2d3bfa39ce7f2b06/'

  app 'Microsoft Remote Desktop Beta.app'

  zap delete: [
                '~/Library/Preferences/com.microsoft.rdc.osx.beta',
                '~/Library/Caches/com.microsoft.rdc.osx.beta',
                '~/Library/Application Support/com.microsoft.rdc.osx.beta',
                '~/Library/Logs/Microsoft Remote Desktop Beta',
                '~/Library/Application Support/Microsoft Remote Desktop Beta',
              ]
end
