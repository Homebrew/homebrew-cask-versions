cask "mongodb-compass-beta" do
  version "1.27.0-beta.1"
  sha256 "1aa94d818d8373293e8bb1f2509bd9f85f21c480a6691f95e2bfd6039eb20b41"

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
