cask 'opera-beta' do
  version '48.0.2685.16'
  sha256 '9f51a2722fb26f88c4844fb27d7c84bf0190041c6213ad86dfa80e545749d72c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
