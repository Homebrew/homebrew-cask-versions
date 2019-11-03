cask 'mongodb-compass-beta' do
  version '1.20.0-beta.8'
  sha256 'b8cba2ee882ec68eb328c0c4882d5e31cb683fe8f869c20582c6ac3ce435c848'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
