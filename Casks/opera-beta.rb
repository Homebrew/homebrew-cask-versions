cask 'opera-beta' do
  version '47.0.2631.34'
  sha256 'a1a9af1ed5d62d6e371e78ea392738054b72e189637a90979ebda6a5cd3533a9'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'https://www.opera.com/computer/beta'

  app 'Opera Beta.app'
end
