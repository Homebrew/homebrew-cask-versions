cask 'opera-beta' do
  version '42.0.2393.14'
  sha256 '50f973884c50d1454d8b4a8a0a90f9bab00fbbf0211c5dd6d348f8013029ba24'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
