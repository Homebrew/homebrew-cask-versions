cask 'macaw-indigo' do
  version '1.5.15.3'
  sha256 '6f284ca20a7259c76ad8695e9b0522d374dd9e4d61657d39066b9ce9e9c2faea'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml',
          :sha256 => '281edaab8de9451a0b801deb1a267c6b271f610744677e2183b73e6983103a3c'
  homepage 'http://indigo.macaw.co/'
  license :commercial

  app 'Macaw Indigo.app'
end
