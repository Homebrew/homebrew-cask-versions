cask 'chirp-daily' do
  version '20161220'
  sha256 '6aa2af7f8c322443b6ddf171e9b9675b5749c75b41b43c4d1bf9aa29dbde2ed7'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
