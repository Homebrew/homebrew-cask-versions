cask 'chirp-daily' do
  version '20180210'
  sha256 '7aecad976b074ae39d6485e64e3fabe0081283fe9e7a41796cb440b0bb44033a'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
