cask 'opera-beta' do
  version '44.0.2510.433'
  sha256 '67c1fcf8c8c482b44af65cf5ac5182dfc84e0ae5f21aba3e641234e1bb822ac2'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
