cask 'mcedit-beta' do
  version '2.0.0-beta14'
  sha256 '5486c1ff58e9b8c2b4bfe1b3ce939a7be673fbc50c248b324b21a2cc0e01cd1e'

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
