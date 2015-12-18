cask 'papers2' do
  version '281'
  sha256 '2e9f328e960c66c1d5b92eac222e0e74e582be9c74d97e58e11f8a84205add97'

  # mekentosj.com is the official download host per the vendor homepage
  url "http://downloads.mekentosj.com/papers_#{version}.dmg"
  name 'Papers'
  homepage 'http://www.papersapp.com/mac/'
  license :commercial

  app 'Papers2.app'
end
