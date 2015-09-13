cask :v1 => 'libreoffice-beta' do
  version '5.0.2.1'
  sha256 '168f48a00da59eafeb9ddfac168cafe590e8bd87afa660d7f6c74def48a82ee9'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..-2].join('.')}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
