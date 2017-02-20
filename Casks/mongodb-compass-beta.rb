cask 'mongodb-compass-beta' do
  version '1.6.0-beta.0'
  sha256 'b68243e42980d6d214e738f139647d58306fe756c5ae68441e66ee376e46c46b'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
