cask 'chirp-daily' do
  version '20160517'
  sha256 'f3c640e3442add6b84f4b3894383138919107e7430b89da19b4975bd1c01b238'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
