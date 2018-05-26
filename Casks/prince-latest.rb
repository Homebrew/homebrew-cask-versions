cask 'prince-latest' do
  version '20180524'
  sha256 '533789e4548c6f42303cfc375bfe6ede03399920040bef1d40c775c8d8797f88'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/',
          checkpoint: 'd5f1f8130e762c2e556a3725554c433f7ee9f58613846ae431e4e2748cc368e6'
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
