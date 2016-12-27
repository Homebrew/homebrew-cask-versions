cask 'exist-db3' do
  version '3.0.RC1'
  sha256 '086f0813e526047d9cebca5be8d5f7012bb5d2cdb14e8ae98f3297bba50b9a58'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end
