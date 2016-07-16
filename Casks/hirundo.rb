cask 'hirundo' do
  version '0.9.6'
  sha256 'fa33093fba1ec4eae5cd1bc9864508c544bacec8a7745c3e12691e959e1b9337'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :commercial

  depends_on macos: '>= :el_capitan'

  app 'Hirundo.app'
end
