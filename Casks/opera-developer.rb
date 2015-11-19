cask :v1 => 'opera-developer' do
  version '35.0.2052.0'
  sha256 'd6cd989c92830da3cf90a29d0c66e1a54007667fafcadfb4c10da6e30bce57b6'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
