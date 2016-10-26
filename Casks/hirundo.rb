cask 'hirundo' do
  version '0.9.8'
  sha256 '95978fc474740e58f2b744f455504b5bc0fd3679f1bb613694caaa040cdc1b28'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  depends_on macos: '>= :el_capitan'

  app 'Hirundo.app'
end
