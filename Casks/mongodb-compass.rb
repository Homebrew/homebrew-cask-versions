cask 'mongodb-compass' do
  version '1.13.1'
  sha256 :no_check

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass.app'
end
