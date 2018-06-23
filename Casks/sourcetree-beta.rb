cask 'sourcetree-beta' do
  version '2.7.4b1'
  sha256 '70bfe14301ed48c0fd9de4c273212d7fb70b4b5ef1e452ac7111158910895c89'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml'
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
