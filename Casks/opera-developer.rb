cask 'opera-developer' do
  version '51.0.2781.0'
  sha256 '266bbe9eaf745e508534c7400719f6ecef74aee19ff8947d5713b5c7dfc7e457'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
