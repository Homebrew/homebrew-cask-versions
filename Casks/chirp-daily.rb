cask 'chirp-daily' do
  version '20200409'
  sha256 'd12a5fb48805c58334e52bffa8ebdc36eff85e759eb632e0de265a1dee9c4504'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  appcast 'https://trac.chirp.danplanet.com/chirp_daily/LATEST/SHA1SUM'
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
