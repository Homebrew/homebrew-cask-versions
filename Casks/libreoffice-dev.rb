cask 'libreoffice-dev' do
  version '5.3.0.2'
  sha256 'bbacb51d6b4f60517ccad4bbd578a7597ce04d203b90ab05a2f7cad8ae73ff0b'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '05d9fecc5be03090d5249c42ad921d3b1a2a8c1bec2de5d312063af7a595bcb5'
  name 'LibreOffice Fresh Prerelease'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc", key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  depends_on macos: '>= :mountain_lion'

  app 'LibreOffice.app'
end
