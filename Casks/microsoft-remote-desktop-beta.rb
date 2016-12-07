cask 'microsoft-remote-desktop-beta' do
  version '8.2.29'
  sha256 '6cd39d7ea3be3458ed9936bb083e5a71dcad9dd129cbb50fafa9584f89d7c982'

  url 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/70?format=zip&avtoken=c56d931d468c2e8955b6c3755489de04b2d1601c'
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
