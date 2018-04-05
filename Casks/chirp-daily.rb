cask 'chirp-daily' do
  version '20180331'
  sha256 '461970e47e09940fb4403fdd04a7116f5f5dda70b0ae09d811f9e9592864cf8c'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
