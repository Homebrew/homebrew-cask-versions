cask "mongodb-compass-beta" do
  version "1.29.5-beta.11"
  sha256 "d3b3e40d72cfcbf8aecfa04adea762f324feaf5e8e79f95d9524f9eea261c6c0"

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
