cask "mongodb-compass-beta" do
  version "1.31.0-beta.13"
  sha256 "481379e430e7c913659b538c1bf2bfd1451efbce3ba3b682d8edd189185135d6"

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
