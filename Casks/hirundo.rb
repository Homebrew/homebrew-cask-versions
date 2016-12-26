cask 'hirundo' do
  version '0.9.9'
  sha256 '5db56b8b09ac199174af5d11aa9f21495900ec7d483150462fc981dd454b3819'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  depends_on macos: '>= :el_capitan'

  app 'Hirundo.app'
end
