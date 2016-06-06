cask 'chirp-daily' do
  version '20160604'
  sha256 '87ff73fc21a151b59d87400cc6fe9d860fdb7d702e2ae7a754b6744b089769bc'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
