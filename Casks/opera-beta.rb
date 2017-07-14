cask 'opera-beta' do
  version '47.0.2631.23'
  sha256 'da5c374d11a008b44fea883e24ad6fae1be16bf133856c63008798464d43dcee'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
