cask 'libreoffice-dev' do
  version '5.3.2.1'
  sha256 '1f5aae7cca603d10a339dc2ee6ba76db04956afffe2eb80acdd126ebabcdc7be'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'e0dfe7b5050b6b0a824137405b15121d68679581b66d7141b2a0b6d2c0487cdb'
  name 'LibreOffice Fresh Prerelease'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
end
