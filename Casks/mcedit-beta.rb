cask 'mcedit-beta' do
  version '2.0.0-beta12'
  sha256 '6c92dcc582cd1cf979a41ba825d49dca464bb20c128a28d8d27ab1b9f7a3d5aa'

  # github.com/mcedit/mcedit2 was verified as official when first introduced to the cask
  url "https://github.com/mcedit/mcedit2/releases/download/#{version}/mcedit2-macosx64-#{version}.zip"
  appcast 'https://github.com/mcedit/mcedit2/releases.atom'
  name 'MCEdit 2.0'
  homepage 'https://www.mcedit.net/'

  suite "mcedit2-macosx64-#{version}", target: 'MCEdit 2'

  zap trash: [
               '~/Library/Application Support/CrashReporter/MCEdit 2_*.plist',
               '~/Library/Application Support/pymclevel',
               '~/Library/Preferences/mcedit.ini',
               '~/Library/Saved Application State/net.mcedit.mcedit2.savedState',
             ]
end
