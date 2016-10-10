cask 'hirundo' do
  version '0.9.7'
  sha256 'd962b39cdd6626475d75e2c14a88a5495ef1760419ac8815ee66b4b3930f7d83'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  depends_on macos: '>= :el_capitan'

  app 'Hirundo.app'
end
