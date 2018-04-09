cask 'opera-beta' do
  version '53.0.2907.7'
  sha256 'fd2bee0b62f9efe678d9eefbdbb7702f2398a39f4a3e70b36fb7feb92704ce42'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
