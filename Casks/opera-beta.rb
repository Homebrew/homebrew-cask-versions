cask 'opera-beta' do
  version '35.0.2066.35'
  sha256 '2329202ea5551b4128c08cff9d4d187fe5f3da1dadc32ac6b27cad8b76665b0d'

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name 'Opera Beta'
  homepage 'http://www.opera.com/computer/beta'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Opera Beta.app'
end
