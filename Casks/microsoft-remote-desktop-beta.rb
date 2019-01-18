cask 'microsoft-remote-desktop-beta' do
  version '10.2.6.1543,259'
  sha256 '543e1088f4c749262258ed3af14687d7939904e0d81333e456b9bd2288fff1de'

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
