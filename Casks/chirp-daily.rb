cask 'chirp-daily' do
  version '20160819'
  sha256 'a99d3726d5145d3367c093ea4b3f9ebc5d880fac03a1ce2deded7ce49b6f24eb'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
