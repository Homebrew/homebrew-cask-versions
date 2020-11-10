cask "mongodb-compass-beta" do
  version "1.24.0-beta.0"
  sha256 "e08d6b6db91309eb492fa2ef10087eafd9f00da041a013df03df1a4ac34a6a12"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  app "MongoDB Compass Beta.app"
end
