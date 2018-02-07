cask 'opera-beta' do
  version '51.0.2830.23'
  sha256 '7c120ad2f47abb030a82aaef59a9384720b0103b78a2f831e3e92ef24a3b38be'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
