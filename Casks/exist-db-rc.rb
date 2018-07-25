cask 'exist-db-rc' do
  version '5.0.0-RC2'
  sha256 'fe733342acde8a3f95b7161a6de896461baf02c0b2c8061b0aaa606dd2a26460'

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
