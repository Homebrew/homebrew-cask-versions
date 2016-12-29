cask 'opera-beta' do
  version '43.0.2442.7'
  sha256 'ffaa3cec33da0835d4ce1219bb67f09d5d4ecc56a30d431e933eb752abf5e006'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
