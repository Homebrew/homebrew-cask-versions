cask 'chirp-daily' do
  version '20160611'
  sha256 'fc365195cc6b8b92fc2590ca616dc47cd9abe56c6f815c60f61cf19cddb7688a'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
