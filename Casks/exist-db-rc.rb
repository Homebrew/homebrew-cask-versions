cask 'exist-db-rc' do
  version '5.0.0-RC6'
  sha256 '3099bf682d6cb02819ad6417df326d01f0f46b85d00fd8e4caeb7d8481ab8c84'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8+'
  end
end
