cask 'opera-beta' do
  version '48.0.2685.22'
  sha256 'd104437560860b4082ff097815c6734496c5cf9fc0f44880036e62c0a0506704'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
