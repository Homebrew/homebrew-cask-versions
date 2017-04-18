cask 'opera-developer' do
  version '46.0.2567.0'
  sha256 '60bb547ab91487885f9bf36529a85e72ed95c6d1b55ea6382ec095a6ab6582d1'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'http://www.opera.com/developer'

  app 'Opera Developer.app'
end
