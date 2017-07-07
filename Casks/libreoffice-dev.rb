cask 'libreoffice-dev' do
  version '5.4.0.1'
  sha256 '385a258b3def7f07a2af5e00430c3c7ae541f4002b8d18e0ba6d9726e588f825'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '7f72974717d71ce2084df044f33905a2b1000d68c6cd230878bfeee262dca5ca'
  name 'LibreOffice Fresh Prerelease'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
end
