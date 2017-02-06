cask 'opera-developer' do
  version '44.0.2494.0'
  sha256 '9e09d7292190dd38ac2b25b112b75f256cf234d92566f63e0d084c54319267fc'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
