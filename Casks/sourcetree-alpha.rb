cask 'sourcetree-alpha' do
  version '2.4b2'
  sha256 'cdb858ab1b0b9f5e7805835fa7c5e91b71dc27600af9de85bd3cfbd215dc796d'

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastAlpha.xml',
          checkpoint: '88d3a78632164545cf9e78e3ed07135e8ccc2533f1f2d0c854160df55d8f67a2'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

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

  caveats do
    files_in_usr_local
  end
end
