cask 'opera-developer' do
  version '48.0.2679.0'
  sha256 '4c0f57a9639612e70f0618d5d82bcd601c3ff44fbcc3f79e09f877c52b8f8920'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Developer.app'
end
