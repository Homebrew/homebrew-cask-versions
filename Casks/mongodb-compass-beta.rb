cask "mongodb-compass-beta" do
  version "1.24.0-beta.1"
  sha256 "180db65442b8e65a282ed5bdedeeb44870551f880d27f87f9d74068262e969b8"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
