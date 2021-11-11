cask "mongodb-compass-beta" do
  version "1.29.1-beta.0"
  sha256 "6680d2efdc0e987c2000331df794f224483989b508dc3c76823ad549c7904ca8"

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
