cask :v1 => 'x-mirage1052' do
  version '1.05.2'
  sha256 '2c8cb1d4969ac5ff644c98c95ba1c29cd4e22a2a303331cbf2065ec20c84013a'

  url "http://dl.x-mirage.com/x-mirage(#{version}).release.dmg"
  homepage 'http://www.x-mirage.com/x-mirage/'
  license :commercial

  app 'X-Mirage.app'
end
