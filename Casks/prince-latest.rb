cask 'prince-latest' do
  version '20171026'
  sha256 '8c0467f1565aa3062c40acfb41ea682b1be064eb9122d0387ba89f5d32891963'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/',
          checkpoint: 'babd91d1315897fafd95b2713636a1e93e732ee7196cc83123d89c4855f7cba8'
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
