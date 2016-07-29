cask 'opera-beta' do
  version '39.0.2256.42'
  sha256 '5fda41f0c79c72d4eff3e128e15deae99da96c0b2044353413c983936bd2fdc0'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
