cask 'libreoffice-beta' do
  version '5.1.3.2'
  sha256 '969597335139d626a2fff98089fd3e2d4d7bd8ddd6753b355ec7a9d8889f4b5b'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'b7b14688525109c2709454f77524a6a17110a48e1e2b8b5492d69080dae0e02e'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
