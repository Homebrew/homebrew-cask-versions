cask 'libreoffice-dev' do
  version '5.2.0.0,alpha1'
  sha256 '1dedfc3f7321edae7a592fc0f56d06e71e09fd0a87132010e81f7770ac32a525'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/x86_64/LibreOfficeDev_#{version.before_comma}.#{version.after_comma}_MacOS_x86-64.dmg"
  appcast 'https://download.documentfoundation.org/libreoffice/testing/',
          checkpoint: 'b7b14688525109c2709454f77524a6a17110a48e1e2b8b5492d69080dae0e02e'
  name 'LibreOfficeDev'
  homepage 'https://www.libreoffice.org/download/pre-releases/'
  license :mpl
  gpg "#{url}.asc",
      key_id: 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOfficeDev.app'
end
