cask 'chirp-daily' do
  version '20170501'
  sha256 '1429d952e9024ca9237e6e1ad59d06b400ca594fb5383d5b8024bfcc4ae71be7'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
