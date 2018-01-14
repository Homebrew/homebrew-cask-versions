cask 'chirp-daily' do
  version '20180104'
  sha256 '83b735b04b646b286bb053277d3b8385307f265aec9a682a2525fce1768cdcb6'

  url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
