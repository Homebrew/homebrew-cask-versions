cask 'sourcetree-beta' do
  version '2.7b5'
  sha256 'b59533c7b4f9c3438a22fa80efa4c7d52876d8b09e233d5cf509a4ca7b57d935'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml',
          checkpoint: 'b522feb7a2fe70c5413efe2f1638830de65c90e65b02322e9629a3007f2422af'
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
