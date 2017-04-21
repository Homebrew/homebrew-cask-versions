cask 'sourcetree-alpha' do
  version '2.5.1a1'
  sha256 '81d9974647f8230e2199293093bcfef8f4c552039dbfa2950bdb88e993720fd5'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastAlpha.xml',
          checkpoint: '2899010e4a70162941d33e645da56861b797768fcdd5691fb7adf3f578c656c1'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'SourceTree Alpha.app'
  binary "#{appdir}/SourceTree Alpha.app/Contents/Resources/stree"

  postflight do
    suppress_move_to_applications
  end

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
