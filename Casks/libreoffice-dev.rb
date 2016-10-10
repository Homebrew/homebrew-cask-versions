cask 'libreoffice-dev' do
  version '5.2.0.3'
  sha256 'd31cfc1a0ed6651bd2bb3a158be6d2c9bd621b53670e56131e2dde5e4fe43d0d'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '786aaf1616a2abb056f0c9318893f737a5b537b6481b85830af5b6f351f17f51'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
