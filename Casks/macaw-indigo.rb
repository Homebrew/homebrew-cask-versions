cask :v1 => 'macaw-indigo' do
  version '1.5.13.1'
  sha256 'ad87a7e547e5f66b5e60d43b7e3fff7e37935fc1b37d160ed9800125c964ffd8'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml',
          :sha256 => 'a1b3cf974b3c105a97b571a0d65364d896ca94070ed3218cf05725d7e7f44f50'
  homepage 'http://indigo.macaw.co/'
  license :commercial

  app 'Macaw Indigo.app'
end
