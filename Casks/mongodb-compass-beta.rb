cask "mongodb-compass-beta" do
  version "1.36.0-beta.1"
  sha256 "eb3c260151361bec6d7cce3c48f72813511a49a144ea09af0db9dfacaaef3662"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://github.com/mongodb-js/compass/releases?q=prerelease%3Atrue&expanded=true"
    strategy :page_match
    regex(%r{href=["']?[^"' >]*?/tag/\D*?(\d+(?:\.\d+)+-beta\.\d)[^"' >]*?["' >]}i)
  end

  app "MongoDB Compass Beta.app"
end
