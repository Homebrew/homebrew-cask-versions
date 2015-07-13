cask :v1 => 'revisions-beta' do
  version '2.1-r928'
  sha256 'fb91a2dd876becd034445813bac037cf99cb4f3691f2d140c6425fe52427789f'

  url "https://revisionsapp.com/downloads/revisions-#{version}-public-beta.dmg"
  name 'Revisions'
  homepage 'https://revisionsapp.com/'
  license :commercial

  app 'Revisions.app'
end
