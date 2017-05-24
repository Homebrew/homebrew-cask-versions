cask 'opera-beta' do
  version '46.0.2597.6'
  sha256 '7020b96ab9847ac6882e2b875bcd9a04d448858f8adda8eb130cf8112ef5694c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
