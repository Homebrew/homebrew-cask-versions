cask 'jabref-beta' do
  version '4.0-beta2'
  sha256 'c5b764bd74486a5a348a3ae98a3c848867b6608d516801a296d903812a37cd9d'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'a05f548db846150e797fb5690642b423cb72e83afde629a45ca80774ea99c7a1'
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
