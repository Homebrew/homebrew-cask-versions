cask 'background-music-pre' do
  version '0.2.0-SNAPSHOT-1e5d625'
  sha256 :no_check

  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/#{version}/BackgroundMusic-#{version}.pkg"
  appcast 'https://github.com/kyleneideck/BackgroundMusic/releases.atom'
  name 'Background Music'
  homepage 'https://github.com/kyleneideck/BackgroundMusic'

  conflicts_with cask: 'background-music'
  depends_on macos: '>= :yosemite'

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall launchctl: 'com.bearisdriving.BGM.XPCHelper',
            pkgutil:   'com.bearisdriving.BGM',
            quit:      'com.bearisdriving.BGM.App',
            script:    '/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh'
end
