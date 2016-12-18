cask 'opera-beta' do
  version '42.0.2393.78'
  sha256 'fac07ed47ba366f2cbfc12171eb69a94af5b0d4dd188bf2b166f634d4536abcc'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
