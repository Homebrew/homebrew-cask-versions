cask "postgres-beta" do
  version "2.3beta3,2.2.5"
  sha256 "c63b8bff1e24cdfc8a755ae29a1ff3e17f014cfd2800364df6455357a70c0ea1"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version.after_comma}/Postgres-#{version.before_comma}.dmg",
      verified: "github.com/PostgresApp/PostgresApp/"
  appcast "https://github.com/PostgresApp/PostgresApp/releases.atom"
  name "Postgres"
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
