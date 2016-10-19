cask 'opera-beta' do
  version '41.0.2353.30'
  sha256 'b28adc0cc7e67179cf79c7d19c1cc4bc695cb20f59ceadcf25036a064f621f08'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
