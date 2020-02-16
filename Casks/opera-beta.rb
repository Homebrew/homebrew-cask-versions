cask 'opera-beta' do
  version '67.0.3575.23'
  sha256 '9de0cb84de30df696c48b634817ee00991cd203f0e7ba7662e7c8d7c3d304921'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
