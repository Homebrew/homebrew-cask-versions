cask 'libreoffice-dev' do
  version '5.3.1.2'
  sha256 '12003dac2c3b23e736f1c8500f47f99be0d5aaabc965e7a06fc2b695e2dd6d74'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '947db43ded6686170e301bc29f0c29f1f2d9a6fb77446626f81747000fbc7e98'
  name 'LibreOffice Fresh Prerelease'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
end
