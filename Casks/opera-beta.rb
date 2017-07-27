cask 'opera-beta' do
  version '47.0.2631.31'
  sha256 '6290f2204aba99566d9f74c03433340e19380f9ad9e17fcc3df46e6387a0ce4d'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
