cask 'prince-latest' do
  version '20171214'
  sha256 '4e7d714698d7fe99c1bb4fb5161fa779d0bc78a61f3834b2ecf2a1476673c77a'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/',
          checkpoint: 'd7c85f6a9e40d2f62e1891095a144927be9c078fb761646e531c6f9e04d21fb9'
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
