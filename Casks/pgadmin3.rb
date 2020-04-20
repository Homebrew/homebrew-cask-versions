cask 'pgadmin3' do
  # note: "3" is not a version number, but indicates a different vendor
  version '1.22.2'
  sha256 '35a140e5a15d2acbdd981819c6f891ad197af520914a26964920424621fe5c31'

  # ftp.postgresql.org/pub/pgadmin/pgadmin3/ was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin3/v#{version}/osx/pgadmin3-#{version}.dmg"
  name 'pgAdmin'
  homepage 'https://www.pgadmin.org/'

  app 'pgAdmin3.app'

  zap trash: [
               '~/Library/Preferences/pgadmin3 Preferences',
               '~/Library/Saved Application State/org.postgresql.pgadmin.savedState',
             ]
end
