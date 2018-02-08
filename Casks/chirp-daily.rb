cask 'chirp-daily' do
  version '20180123'
  sha256 'ea797cca99fb5703a684dfce0c492995ccf7fca057a9b69e0ac233f500cefc50'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
