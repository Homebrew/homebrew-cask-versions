cask "mongodb-compass-beta" do
  version "1.32.0-beta.2"
  sha256 "15a1388ee819c9651809b26ccf662e99c20fb61f2a7b66a8432b044d0ec9ec0d"

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
