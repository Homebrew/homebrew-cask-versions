cask "mongodb-compass-beta" do
  version "1.23.0-beta.3"
  sha256 "1b0758e4ca930a503e43aba4656404419772eb17d66a81ee87e100717f82373c"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
