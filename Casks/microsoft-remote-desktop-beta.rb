cask 'microsoft-remote-desktop-beta' do
  version '8.2.32,760'
  sha256 '470c7e0e1353f1ef021e8a530dc63b00a55d7d65fdebb423fc800c9ca974e15e'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06',
          checkpoint: 'bb71a103e49432f0a3a31ca4af8a24c38e40c811afc08cef1edcf821af749d1e'
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
