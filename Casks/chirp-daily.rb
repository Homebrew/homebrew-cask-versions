cask 'chirp-daily' do
  version '20171013'
  sha256 'c47deef8b3b33e22ed4256de39c78d413a4b9b3759056089eefccfd83f476b08'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
