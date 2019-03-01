cask 'prince-latest' do
  version '20190220'
  sha256 '7c688f3f752421ae8e8b7a08fd4d3a99a195fac8b323799aa16e069f4ece0814'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/'
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
