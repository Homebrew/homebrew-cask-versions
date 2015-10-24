cask :v1 => 'libreoffice-beta' do
  version '5.0.3.1'
  sha256 '6abfb3a480ec03dff85872da4be7ca4a9450506ca9320b787c2fcce6e88b8f00'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..-2].join('.')}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOffice.app'
end
