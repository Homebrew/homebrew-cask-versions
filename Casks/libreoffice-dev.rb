cask 'libreoffice-dev' do
  version '5.2.3.1'
  sha256 '44027aae1666d0f1dc774ae52ea2926da460f6e88d49434d554f5230a0b86cd5'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'b683b7a58396677620813b99c51fb4947e71109b49e6b78362fde27507b31587'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
