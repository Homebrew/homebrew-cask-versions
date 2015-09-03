cask :v1 => 'opera-beta' do
  version '32.0.1948.12'
  sha256 'eb54c71f3322724678fa8dcd4d3b73ebd1e9d3a8a00163761d01939a0e464684'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
