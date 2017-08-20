cask 'sourcetree-beta' do
  version '2.6.2b1'
  sha256 'e5f650db0ed41afafde75180114ae30701d32241670b92bb7677a7d6f65b42d6'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml',
          checkpoint: 'bd6cc9a4f00221498884e11dbb17f033ce6f733b7008e42b0703a2fc3f51f832'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'SourceTree-Beta.app'
  binary "#{appdir}/SourceTree-Beta.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
                '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
              ]
end
