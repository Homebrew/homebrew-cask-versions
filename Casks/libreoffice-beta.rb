cask 'libreoffice-beta' do
  version '5.1.0.0.beta2'
  sha256 '4ff5f22273b7e9e8abaabbbcd62bbbb06c2c90c9c45030f00a324f0cca26f73b'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.')[0..2].join('.')}/mac/x86_64/LibreOfficeDev_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'
  name 'LibreOffice'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOfficeDev.app'
end
