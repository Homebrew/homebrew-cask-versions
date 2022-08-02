cask "mongodb-compass-beta" do
  version "1.32.6-beta.0"
  sha256 "97d859d8a7a839cb51c67a11a3fd0e14bfbc4d6729c76c419abc57c82b721e22"

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
