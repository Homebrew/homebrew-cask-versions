cask 'mongodb-compass-beta' do
  version '1.3.0-beta.4'
  sha256 'cddd5b7e4f834ae852755dcbc3c06f3f09c8280045ddde80aed47ce242569df6'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'
  license :commercial

  app 'MongoDB Compass.app'
end
