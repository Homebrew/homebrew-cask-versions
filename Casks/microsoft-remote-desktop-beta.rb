cask 'microsoft-remote-desktop-beta' do
  version '8.2.35.783,121'
  sha256 '6eaaefb29b645e2dce083659d0440a481fc9b203388594b2ec02b658f785489c'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06',
          checkpoint: 'ebb3e3de5a68abd965d58f3526a1115f7d57837495fcddcaf65b8419d1b152f7'
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
