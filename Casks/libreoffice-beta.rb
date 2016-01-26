cask 'libreoffice-beta' do
  version '5.1.0.2'
  sha256 '2955fc75c6f496a9055e4f8fd4075a506ca64f4a72df77a4c0e75e886a98849b'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..2].join('.')}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
