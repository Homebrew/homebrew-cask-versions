cask 'jabref-beta' do
  version '4.0-beta'
  sha256 '0d8c6ff5979027a3c8c5da23b2ff77ae2dc62cdb0baf695e61d5da35fac0e551'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url 'https://github.com/JabRef/jabref/releases/download/v4.0-beta/JabRef_macos_4_0_0-beta.dmg'
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '7714d6c5bea930a04dc3caa1c6434b47e40dbae33ec472dca9bae0b10731157d'
  name 'JabRef Beta'
  homepage 'https://www.jabref.org/'

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
