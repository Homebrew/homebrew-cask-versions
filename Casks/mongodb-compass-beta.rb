cask "mongodb-compass-beta" do
  version "1.23.0-beta.4"
  sha256 "e6742f15b2c8cd20b74570c01b71b9a65354d9f70c5ab362e953d4f3f1242ad1"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
