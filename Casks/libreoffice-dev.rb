cask 'libreoffice-dev' do
  version '5.2.0.0,beta1'
  sha256 '017daa1e2d2af8331512199b6ec1838938ee07eee472f6216048aa903a840dcc'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version.before_comma}.#{version.after_comma}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: '769fef0ee2625c4adedf8d7d05a26f3c9367c657ab8edb587a8ca8e572a6e7fe'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOfficeDev.app'
end
