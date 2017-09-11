cask 'opera-developer' do
  version '49.0.2711.0'
  sha256 '13e220c913e52307567ba62a6e59a8576820ef883d87ece49bee68d959aad25e'

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name 'Opera Developer'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Developer.app'
end
