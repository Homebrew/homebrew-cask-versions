cask 'mongodb-compass-beta' do
  version '1.4.0-beta.2'
  sha256 '6f2f796be04a6ffb47b3ba3ed72c22c148aed4c08b03f0e1ce7e0f48db092f1f'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
