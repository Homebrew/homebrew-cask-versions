cask "mongodb-compass-beta" do
  version "1.20.0-beta.9"
  sha256 "69e118e4aab5688d8ed70e581043b951adc95da98272c6ea1b1117598607ce3c"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/download-center/compass"
  name "MongoDB Compass"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Beta.app"
end
