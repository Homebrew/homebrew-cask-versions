cask 'chirp-daily' do
  version '20190210'
  sha256 'ff83b8ea61f19c5ffe892a5a8b7f68e2c35c9f102b437ba6ecf248e129072939'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
