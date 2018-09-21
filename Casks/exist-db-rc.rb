cask 'exist-db-rc' do
  version '5.0.0-RC4'
  sha256 '7c1f4003deaef6771e834c1bab6802cf8db4af6a67be29c693400b069eb8bf8f'

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
