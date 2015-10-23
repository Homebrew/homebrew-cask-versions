cask :v1 => 'opera-beta' do
  version '33.0.1990.35'
  sha256 '2e77e1b7b2b0f857e7fb53fadc1a9078791c9dda1a4182130cb6fcef14420aaf'

  url "http://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/computer/beta'
  license :unknown

  app 'Opera Beta.app'
end
