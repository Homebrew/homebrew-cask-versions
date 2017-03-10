cask 'mongodb-compass-beta' do
  version '1.7.0-beta.0'
  sha256 'b8c582a5f924d0aa6dc000c12d4e8d1a5a2be59ef6f8532ae021adb1d0350484'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
