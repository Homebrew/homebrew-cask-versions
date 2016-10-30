cask 'libreoffice-dev' do
  version '5.2.3.2'
  sha256 '899a0828f67dbe1d4feda438c43c40f036e265930b02498b2890fea22d3d7841'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'fc3fbc118c7e3d0abf43a9442718b977412c09934bc9d4979cae44b9cab7b73b'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
end
