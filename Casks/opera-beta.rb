cask 'opera-beta' do
  version '69.0.3686.21'
  sha256 'fc4fc4c1b9add5e16bfc30b27e29361082ce314d691064f0ff2ec9dce02b4d90'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  auto_updates true

  app 'Opera Beta.app'
end
