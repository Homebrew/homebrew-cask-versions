cask 'exist-db5' do
  version '5.0.0-RC1'
  sha256 'af92923460647bcc6efd7e769b0761eccd30d75ca22c492e000e45fb58471046'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end
