cask "postgres-beta" do
  version "2.5beta1"
  sha256 "6fbb47bdbea8e45d24c5d4101f68f58056d1769def771eff00450c5d7b045994"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-13-13-arm.dmg",
      verified: "github.com/PostgresApp/PostgresApp/"
  appcast "https://github.com/PostgresApp/PostgresApp/releases.atom"
  name "Postgres"
  desc "PostgreSQL installation packaged as a standard app"
  homepage "https://postgresapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Postgres.app"

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
              "com.postgresapp.Postgres#{version.major}",
              "com.postgresapp.Postgres#{version.major}MenuHelper",
            ]

  zap trash: [
    "~/Library/Application Support/Postgres",
    "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
    "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
    "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
  ]
end
