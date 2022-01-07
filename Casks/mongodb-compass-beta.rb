cask "mongodb-compass-beta" do
  version "1.30.0-beta.4"
  sha256 "00acca8fe1069cf6780353a3987d778f43bc9e4e9a759374eb0a60521db7285a"

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
