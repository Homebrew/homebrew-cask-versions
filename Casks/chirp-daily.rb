cask 'chirp-daily' do
  version '20190120'
  sha256 '049a2cf88edb247a8db7b02e03127627d3ed5eb859f8209f9152caf630cbcf2e'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
