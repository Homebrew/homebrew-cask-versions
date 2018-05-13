cask 'prince-latest' do
  version '20180328'
  sha256 '0458b1837225a6285d2f304a68fafa9025020d6784ac254d1317dcb157799d78'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/',
          checkpoint: '9933d0cf8d8fe54f66dce9ffede5f794ee8de4a70dd6ea753c25a77c82fb35d5'
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
