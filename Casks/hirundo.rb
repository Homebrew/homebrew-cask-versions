cask 'hirundo' do
  version '0.8.2'
  sha256 '4665a3de5bdc32cc20bf05e214443fc262637730c2a53be974b9686e4eff2d45'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :commercial

  app 'Hirundo.app'
end
