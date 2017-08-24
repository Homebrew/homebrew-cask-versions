cask 'mongodb-compass-beta' do
  version '1.9.0-beta.2'
  sha256 '7d4a213efb4e9b7b29d5f556c09109b2c236d3a82b7394ab209ef6404935c81b'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
