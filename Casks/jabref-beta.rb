cask 'jabref-beta' do
  version '4.0-beta3'
  sha256 '9c95ddb95164073a4e66a52c69fd0994bb99b390285160f204d6799ed1d431a5'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'f69c0b2f44afba77f0e6202faa841622e16b229aa3a8492013ffc67d6c916f37'
  name 'JabRef Beta'
  homepage 'https://www.jabref.org/'

  conflicts_with cask: 'jabref'

  installer script: {
                      executable: 'JabRef Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       [
                                    '-q',
                                    '-VcreateDesktopLinkAction$Boolean=false',
                                    '-VaddToDockAction$Boolean=false',
                                    '-VshowFileAction$Boolean=false',
                                    '-Vsys.installationDir=/Applications',
                                    '-VexecutionLauncherAction$Boolean=false',
                                  ],
                    }

  uninstall delete: '/Applications/JabRef.app'
end
