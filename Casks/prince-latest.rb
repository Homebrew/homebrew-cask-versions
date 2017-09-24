cask 'prince-latest' do
  version '20170907'
  sha256 '3c882cbbcdd646e27263105fce8079391d703c8243ad640b4b2db3364dadce5f'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/',
          checkpoint: '53edcc6bb96a56e42143629a6cc380229ef1f27ed372e550f012e3f71a10f548'
  name 'Prince'
  homepage 'https://www.princexml.com/'

  installer script: "prince-#{version}-macosx/install.sh"

  uninstall delete: [
                      '/usr/local/bin/prince',
                      '/usr/local/lib/prince',
                    ]

  caveats do
    files_in_usr_local
  end
end
