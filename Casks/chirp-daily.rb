cask 'chirp-daily' do
  version '20180115'
  sha256 'b4781db9e40e0526424959de693099e9ffa8059ac699a27a1fa413ebea0ccda3'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
