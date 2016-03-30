cask 'libreoffice-beta' do
  version '5.1.2.1'
  sha256 'cf211d607658b1f678d6ce9602e975b186b8abf389f995022cdbe48904ba6c1e'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..2].join('.')}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
