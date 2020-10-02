cask "db-browser-for-sqlite-nightly" do
  version :latest
  sha256 :no_check

  url "https://nightlies.sqlitebrowser.org/latest/DB.Browser.for.SQLite.dmg"
  name "DB Browser for SQLite"
  desc "Database browser for SQLite"
  homepage "https://sqlitebrowser.org/"

  conflicts_with cask: "db-browser-for-sqlite"

  app "DB Browser for SQLite.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
