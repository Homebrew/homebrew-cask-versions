cask 'chirp-daily' do
  version '20190703'
  sha256 '441f6840720b929fc7070e32963b20ed0ece8c153584a5d2bc9e4fd0dfa568df'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
