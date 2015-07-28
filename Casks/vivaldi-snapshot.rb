cask :v1 => 'vivaldi-snapshot' do
  version '1.0.233.3'
  sha256 '1610ebd7fc48faa0249010e6d5fa89f9da1740d1ec98ea927878b0531bb32a99'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '55ff73c4012ccbeed4858e91534e513022c11b01255d61d572648920df9ce69b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
