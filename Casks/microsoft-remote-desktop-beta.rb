cask 'microsoft-remote-desktop-beta' do
  version '8.2.29,70'
  sha256 '6cd39d7ea3be3458ed9936bb083e5a71dcad9dd129cbb50fafa9584f89d7c982'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06',
          checkpoint: 'df69689859ed2ac4659bb3a3d162bdb5b87fe707f937f966994748d55bc90288'
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
