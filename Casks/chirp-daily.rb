cask 'chirp-daily' do
  version '20160713'
  sha256 'd50892b5d4b8a2687786f8f8ad4762cd454acea4e36bc3726f954e151390279d'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
