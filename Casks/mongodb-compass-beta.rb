cask "mongodb-compass-beta" do
  version "1.32.3-beta.3"
  sha256 "c97bc2a4e489ab6174ad5aea88cfff7fb639c0ba28a35ba8e5ae1f240fd91258"

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
