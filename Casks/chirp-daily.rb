cask 'chirp-daily' do
  version '20160731'
  sha256 '54297720a4bbcfb1a03fcc11c38058f7a007dc912ef50b6b49c8a24ff9a2829f'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
