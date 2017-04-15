cask 'chirp-daily' do
  version '20170108'
  sha256 '39ef3022d6716deb9a438c4fd76306806544e55f794347638f4cfc99adb3ad01'

  url "http://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
