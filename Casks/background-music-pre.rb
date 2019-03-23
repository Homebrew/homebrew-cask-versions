cask 'background-music-pre' do
  version '0.3.0-SNAPSHOT-e093e7d'
  sha256 '281eaf0a6956f1b347ab3ad76b68f418e59c35fa3747558004a1a842128878c9'

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
