cask 'mongodb-compass-beta' do
  version '1.3.0-beta.5'
  sha256 'ef11cd1fdf4598b15333f6332dc35c1c2afaa4f72353b38c16693a28340a77bc'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'
  license :commercial

  app 'MongoDB Compass Beta.app'
end
