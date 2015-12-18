cask 'macaw-indigo' do
  version '1.5.15.3'
  sha256 '6f284ca20a7259c76ad8695e9b0522d374dd9e4d61657d39066b9ce9e9c2faea'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml',
          :sha256 => 'a1b3cf974b3c105a97b571a0d65364d896ca94070ed3218cf05725d7e7f44f50'
  homepage 'http://indigo.macaw.co/'
  license :commercial

  app 'Macaw Indigo.app'
end
