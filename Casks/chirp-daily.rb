cask 'chirp-daily' do
  version '20190925'
  sha256 'c3672c30083a49bde427ebdbdce5d3a2254ca09f15718a492e13f2e4c7212707'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
