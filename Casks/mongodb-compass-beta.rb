cask "mongodb-compass-beta" do
  version "1.30.0-beta.5"
  sha256 "75688c25f404f9411bb66e8f82b40cae8d5ec6d7ab16f40eab2dade9712a0c35"

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
