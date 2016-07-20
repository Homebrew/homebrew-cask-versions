cask 'chirp-daily' do
  version '20160717'
  sha256 'faf6de972070967393c84f45b2dff06d3a210730d6cef5fca45aaa4719142967'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
