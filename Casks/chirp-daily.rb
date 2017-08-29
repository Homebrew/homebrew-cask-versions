cask 'chirp-daily' do
  version '20170714'
  sha256 '541860b4403095d271abd94da701251f32d9e2abf7d90b2293532cb1ccc9e63d'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
