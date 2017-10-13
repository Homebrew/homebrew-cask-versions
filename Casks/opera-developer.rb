cask 'opera-developer' do
  version '50.0.2743.0'
  sha256 '938d8cefd4232082d3d483e6ed177c04e23784288f70ea3e464a0811118d0d4d'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Developer.app'
end
