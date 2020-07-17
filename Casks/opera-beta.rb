cask 'opera-beta' do
  version '70.0.3728.46'
  sha256 '33d11c4af31a2fd5906ea9af3e78af4d57d8fedc924c39d371949eba58f560c0'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
