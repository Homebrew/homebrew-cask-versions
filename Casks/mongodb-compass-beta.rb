cask "mongodb-compass-beta" do
  version "1.27.0-beta.2"
  sha256 "0f98da43204d9fe708939d6cff7303da3ea5f72b432cf6cb31ad785001994a8f"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://github.com/mongodb-js/compass"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*-beta\.\d+)$/i)
  end

  app "MongoDB Compass Beta.app"
end
