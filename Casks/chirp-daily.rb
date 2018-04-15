cask 'chirp-daily' do
  version '20180412'
  sha256 '727dad77ba80ac685108fb1b389d11a7e0daa7451ed25c242812e9a537e04ff2'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
