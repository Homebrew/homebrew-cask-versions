cask 'microsoft-remote-desktop-beta' do
  version '10.3.0.1629,308'
  sha256 'c7a152479bd709c8805615682dfe1ecbe5392ca6e4608c76cbba45593f09341d'

  url "https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5e0c144289a51fca2d3bfa39ce7f2b06',
          configuration: version.major_minor_patch
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
