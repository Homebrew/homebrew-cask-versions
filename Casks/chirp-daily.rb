cask 'chirp-daily' do
  version '20160702'
  sha256 '3129ea9c018453e874b16a7fd209214977555f92b8b7663bb0bd2775e3119b08'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
