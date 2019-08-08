cask 'background-music-pre' do
  version '0.3.0-SNAPSHOT-04f1730'
  sha256 'dc040434549611d4bbb4344ca7c3cf30179559545583a06b0099185de28f8a9c'

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
