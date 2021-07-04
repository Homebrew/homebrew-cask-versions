cask "mongodb-compass-beta" do
  version "1.27.0-beta.10"
  sha256 "743434d51f76cbfc32c782b83f86ea06c93fc404e39d3191fdccc7c0c2f2a6be"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://github.com/mongodb-js/compass"
    regex(/^v?(\d+(?:\.\d+)+[._-]beta\.\d+)$/i)
  end

  app "MongoDB Compass Beta.app"
end
