cask 'libreoffice-dev' do
  version '5.3.0.0,beta2'
  sha256 'de2b255d4e0aa4d2e6f95aaaaacefc58a3838708d24b7e95ba87d97681710685'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version.before_comma}.#{version.after_comma}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'ebb247994de5d9151a1158d384568e0a230420ff9b8d6803c85fa8436ae8b17b'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOfficeDev.app'
end
