cask 'hirundo' do
  version '0.8.7'
  sha256 '390ca5159e11ac1c081c69d0e1ff4caa952940b591e604ab9f793e3388301563'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :commercial

  app 'Hirundo.app'
end
