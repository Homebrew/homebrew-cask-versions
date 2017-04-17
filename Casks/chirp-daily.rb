cask 'chirp-daily' do
  version '20170414'
  sha256 '30e829cc3bc409f68f98ab9e6a0b93283f3a3ae0078763d88f3e0b688faf51b4'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
