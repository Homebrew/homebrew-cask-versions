cask 'chirp-daily' do
  version '20181018'
  sha256 'afa80f12f89989625513020d22cfe759b19309f92f1461499045d5feed55a288'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
