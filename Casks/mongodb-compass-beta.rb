cask 'mongodb-compass-beta' do
  version '1.4.0-beta.0'
  sha256 'bcddd92912bb6c43de7a50b7a727083dda73b9bc530522227b143b1c5d234e3d'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
