cask 'exist-db-rc' do
  version '5.0.0-RC3'
  sha256 'a8beee825590a68dbb6ec40144de353864a5dce06955dd2e63f52f2311bc6135'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8'
  end
end
