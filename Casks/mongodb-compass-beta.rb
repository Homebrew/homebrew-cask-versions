cask "mongodb-compass-beta" do
  version "1.35.1-beta.3"
  sha256 "923f3dc8f9bb26b4e5ddb2d484cbf069435959faa23f9e3846e6ac1607f7863b"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-x64.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://github.com/mongodb-js/compass/releases?q=prerelease%3Atrue&expanded=true"
    regex(%r{href=["']?[^"' >]*?/tag/\D*?(\d+(?:\.\d+)+-beta\.\d)[^"' >]*?["' >]}i)
    strategy :page_match
  end

  app "MongoDB Compass Beta.app"
end
