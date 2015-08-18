cask :v1 => 'opera-beta' do
  version '32.0.1948.4'
  sha256 '321d3377df202c3940ca4d83c9b5ee1f63e00777b14f490976ebbee2ec15172e'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
