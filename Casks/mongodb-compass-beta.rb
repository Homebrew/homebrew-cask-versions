cask 'mongodb-compass-beta' do
  version '1.5.0-beta.0'
  sha256 'd2b557bdca3cbb1249113c006060476faa6377b80bd0a6cfeb7fc44a303b65a2'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
