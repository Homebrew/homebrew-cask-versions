cask 'libreoffice-dev' do
  version '5.3.0.0,beta1'
  sha256 '8dff22f381e754e32b5f57a605f0121592ae27056960f5613c4df713b58f7ecf'

  # documentfoundation.org/libreoffice was verified as official when first introduced to the cask

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version.before_comma}.#{version.after_comma}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'c670b48ca9a4352e2ec995b28745bed6f4bb6cb446e18cbc15b8b77a24bab665'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOfficeDev.app', target: 'LibreOffice.app'
end
