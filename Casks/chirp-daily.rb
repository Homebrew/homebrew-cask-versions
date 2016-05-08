cask 'chirp-daily' do
  version '20160507'
  sha256 '28412b8d5992d6efaa457a74071cc7c4875b011d230945ddbd0ce071bbdbb3f0'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'
  license :oss

  depends_on arch: :intel

  app "chirp-daily-#{version}.app"

  caveats <<-EOS.undent
    #{token} also requires the KK7DS Python Runtime as described at

      http://chirp.danplanet.com/projects/chirp/wiki/Download#CHIRP-Downloads
  EOS
end
