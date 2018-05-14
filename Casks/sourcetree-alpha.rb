cask 'sourcetree-alpha' do
  version '2.7.4a1'
  sha256 '99ca2431a07fdf7a2c964f46510c3ad3af9c95e80cad55cb02bbf40399bd64bd'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastAlpha.xml',
          checkpoint: '4d102b3046fd5b1714ec2625868fd5be6669652f726af05eee704bd12357a773'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Sourcetree Alpha.app'
  binary "#{appdir}/Sourcetree Alpha.app/Contents/Resources/stree"

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
