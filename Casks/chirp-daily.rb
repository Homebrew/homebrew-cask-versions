cask 'chirp-daily' do
  version '20191029'
  sha256 'f688fdf5184b64e1f9df346311b15ac514d67b07ac169faaa751914d861ca2c0'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
