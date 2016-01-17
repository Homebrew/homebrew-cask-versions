cask 'macaw-indigo' do
  version '1.5.15.3'
  sha256 '6f284ca20a7259c76ad8695e9b0522d374dd9e4d61657d39066b9ce9e9c2faea'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml',
          :checkpoint => 'edbeacf73c56b690aa98a6aedb82c1892c4d79b4bc0a3b87a6094765699793ff'
  name 'Macaw Indigo'
  homepage 'http://indigo.macaw.co/'
  license :commercial

  app 'Macaw Indigo.app'
end
