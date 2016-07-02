cask 'chirp-daily' do
  version '20160625'
  sha256 '101ffc0dead80693dd22deb5dd42a63de2f04033e61bbd82dd9e44d8e007d73c'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel
  depends_on cask: 'caskroom/cask/kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
