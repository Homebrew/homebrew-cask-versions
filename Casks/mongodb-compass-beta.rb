cask "mongodb-compass-beta" do
  version "1.31.3-beta.12"
  sha256 "ed315e38aa87ba16c0f194bc8d359b57551b6d362cb7d5dd85bef1d9587e25fc"

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
