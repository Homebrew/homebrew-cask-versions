cask 'mongodb-compass-beta' do
  version '1.8.0-beta.1'
  sha256 '39c8eb78ffcce72b25b6d3c3fb84a27498ed35cb320913e5bda1ee311efb0b59'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
