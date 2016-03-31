cask 'opera-beta' do
  version '37.0.2178.4'
  sha256 'dae718a5de7e82c8dd849c8c7b6fea236f11831ee2fd6c5844f0f47609408487'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
