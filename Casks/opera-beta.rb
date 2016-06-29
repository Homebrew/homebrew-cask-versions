cask 'opera-beta' do
  version '39.0.2256.15'
  sha256 'e729d6f396c004654177902f7a14ab6ac8fca9681b8fa1b8c21d72acc2da9461'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
