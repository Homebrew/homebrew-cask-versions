cask 'mongodb-compass-beta' do
  version '1.12.0-beta.1'
  sha256 '55f757c35fda1f953f360dad003fa266bd3cf9b7fcdd9d734362431b52d068bb'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
