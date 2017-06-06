cask 'sourcetree-alpha' do
  version '2.5.3a1'
  sha256 '0c46d4c574b6b5aa29c9c2fef2cad1edd724dac79b8b2febb87d3514b1bce986'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastAlpha.xml',
          checkpoint: 'a01404104d03e77ecb71e3177fdf2b684961410a5a873d2283faacf2c7ca2b2e'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'SourceTree Alpha.app'
  binary "#{appdir}/SourceTree Alpha.app/Contents/Resources/stree"

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
