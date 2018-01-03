cask 'chirp-daily' do
  version '20171229'
  sha256 'bf0b9c81f934706982913f774b2d00a76a436338717ed140d4de63de5efa21ce'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
