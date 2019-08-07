cask 'postgres-beta' do
  version '2.3beta2'
  sha256 'aefd40af43a29e0c304dad4d723001fa0d30962941ad4344c798bb3872c13111'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v2.2.4/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Postgres.app'

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
                         "com.postgresapp.Postgres#{version.major}",
                         "com.postgresapp.Postgres#{version.major}MenuHelper",
                       ]

  zap trash: [
               '~/Library/Application Support/Postgres',
               "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
               "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
               "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
             ]
end
