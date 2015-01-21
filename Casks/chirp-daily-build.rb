cask :v1 => 'chirp-daily-build' do
  module Utils
    def self.latest_chirp_version
      # Let's get some info from the SHA1SUM file
      require 'net/http'
      html = Net::HTTP.get 'trac.chirp.danplanet.com', '/chirp_daily/LATEST/SHA1SUM'
      matches = /([a-z0-9]{40})\s+chirp-daily-([0-9]{8})\.app\.zip/.match html

      matches[2]
    end
  end

  version Utils.latest_chirp_version
  sha256 :no_check

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  homepage 'http://chirp.danplanet.com/'
  license :gpl

  app "chirp-daily-#{version}.app", :target => 'chirp-daily-build.app'

  caveats <<-EOS.undent
    #{token} also requires the KK7DS Python Runtime as described at

      http://chirp.danplanet.com/projects/chirp/wiki/Download#CHIRP-Downloads
  EOS
end
