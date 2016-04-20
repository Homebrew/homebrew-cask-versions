cask 'opera-beta' do
  version '37.0.2178.22'
  sha256 'c52026e2cdd3f94ea49c208c2d3c5c4ef51f1025410fedc4a579f3825da14b60'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
