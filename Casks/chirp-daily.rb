cask 'chirp-daily' do
  version '20181214'
  sha256 '7822e98b0dad7e390122fb2b389456be8ab11f16b3ddfda2e24f3cc0e895afbf'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
