cask "mongodb-compass-beta" do
  version "1.24.0-beta.2"
  sha256 "1ea363948c2788fe899484187fa641cb98ece395bde316be18fcc5c78298e937"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
