cask 'chirp-daily' do
  version '20190424'
  sha256 '1129d18bfe69c9db9f0937c53002f3b30544fa7fe8fe16cfd719b8e43467a7a3'

  url "https://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
