cask 'chirp-daily' do
  version '20170510'
  sha256 '4edff5daa64f7e7985f181fa3a9abde97a619d2809d3ab656e03ca07f3693527'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
