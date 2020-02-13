cask 'opera-beta' do
  version '67.0.3575.13'
  sha256 'b332507d4e3c0d9e50dcab5fd60c218034b67613a4038d25a6c2cd187eeab767'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
