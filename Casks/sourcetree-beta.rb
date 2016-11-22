cask 'sourcetree-beta' do
  version :latest
  sha256 :no_check

  # bitbucket.org was verified as official when first introduced to the cask
  url 'https://bitbucket.org/atlassianlabs/sourcetree-betas/downloads/OSX_Beta_Latest.zip'
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcastBeta.xml',
          checkpoint: 'cce5a53bf9928e34d98c959675b7257b25e6392caf791b2eab9b6878716ab105'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'SourceTree Beta.app'
  binary "#{appdir}/SourceTree Beta.app/Contents/Resources/stree"

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
