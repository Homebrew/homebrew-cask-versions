cask :v1 => 'libreoffice-beta' do
  version '5.0.0.1'
  sha256 '6d8c0a644931e68180b24a3f5e38f79518a8f4ba7478cf2a6ae2fc96d78cb1f7'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..-2].join('.')}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
