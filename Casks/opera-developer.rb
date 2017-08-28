cask 'opera-developer' do
  version '49.0.2695.0'
  sha256 '2c5113d75c6d44386829bc34145c50e09ec41b98563abcd908e8c85d90afa5e2'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Developer.app'
end
