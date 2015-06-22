cask :v1 => 'libreoffice-beta' do
  version '5.0.0.0.beta3'
  sha256 '522d74ab04d357807139210c86a321dd5e02bf84026f624740c229eb3ab8b355'

  url "https://download.documentfoundation.org/libreoffice/testing/#{version.split('.0.beta')[0]}/mac/x86_64/LibreOfficeDev_#{version}_MacOS_x86-64.dmg"
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl

  app 'LibreOfficeDev.app'
end
