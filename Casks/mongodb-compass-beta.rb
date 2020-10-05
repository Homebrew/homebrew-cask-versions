cask "mongodb-compass-beta" do
  version "1.23.0-beta.2"
  sha256 "7a753f6fea79075d37fb1c35313468edc310489d50bc7f76340236901842d679"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
