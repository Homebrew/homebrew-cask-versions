cask 'opera-developer' do
  version '44.0.2505.0'
  sha256 '7d0592ae49cd4abc33750b469374b3ee2296566573a3f4f5edbf1ed28118ca7f'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
