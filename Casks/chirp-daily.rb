cask 'chirp-daily' do
  version '20171204'
  sha256 '87a673893576531fe704d24a7f4bc144444108d5557a972e91570655fcedc5e3'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
