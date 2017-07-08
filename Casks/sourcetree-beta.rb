cask 'sourcetree-beta' do
  version '2.6b2'
  sha256 '4a6a35c4bcbb9eb7bcaf08ec4646e4487e96ddf78d7d91356f19fab2ea3cecfb'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml',
          checkpoint: '8a63255e8c1e84c09ed81f8ada9ff6310e479899a1d11d48e5c702755b7e4b5a'
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
