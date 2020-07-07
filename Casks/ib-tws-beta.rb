cask 'ib-tws-beta' do
  version :latest
  sha256 :no_check

  url 'https://download2.interactivebrokers.com/installers/tws/beta/tws-beta-macosx-x64.dmg'
  name 'Interactive Brokers Trader Workstation (Beta Online)'
  homepage 'https://www.interactivebrokers.com/'

  conflicts_with cask: [
                         'ib-tws',
                         'ib-tws-latest',
                       ]

  installer script: {
                      executable: "#{staged_path}/Trader Workstation Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall quit:   'com.install4j.5889-6375-8446-2021.22',
            script: {
                      executable: '/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }
end
