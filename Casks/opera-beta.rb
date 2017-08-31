cask 'opera-beta' do
  version '48.0.2685.11'
  sha256 'e57ce34b356c1494749ddc44d58391d290887c32b6aa53fd837b7e4dbd295a7c'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
