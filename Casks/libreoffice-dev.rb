cask 'libreoffice-dev' do
  version '5.3.3.1'
  sha256 'c02655993d24ea54d54e48e9073e2b79451c31e7b3b91a2cf355e9e58d367c42'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'b620768fa6c590b77b62c28af8148cd2bed3a55b55eb1daf2bdb93b9acbf69e8'
  name 'LibreOffice Fresh Prerelease'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
end
