cask 'sourcetree-beta' do
  version '2.7b3'
  sha256 'f5090be7a602b84e0c8c6abfcf854e2ff693c517a3b873d353695f807b0fb6ab'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml',
          checkpoint: 'e30525c55d530bf7d672ce356bcd09e7d9ddbc52084dfd02454501890e5ade9c'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'SourceTree-Beta.app'
  binary "#{appdir}/SourceTree-Beta.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap trash: [
               '~/Library/Application Support/SourceTree',
               '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
               '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
             ]
end
