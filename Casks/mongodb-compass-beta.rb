cask 'mongodb-compass-beta' do
  version '1.13.0-beta.7'
  sha256 '3f34019371275dca275701c3f46a1b2dafa7e17940fe9caecb4233f6a648d132'

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Beta.app'
end
