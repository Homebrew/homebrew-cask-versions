cask :v1 => 'tableau83' do
  version '8.3.4'
  sha256 'c63801401b244a12daf0aa5f8f14734dd090d5afd8ac453d5820f4ae940b3f4a'

  url "https://downloads.tableau.com/esdalt/#{version}/TableauDesktop.dmg"
  # Alternate version download site
  homepage 'https://www.tableau.com/esdalt'
  license :unknown

  app 'Tableau 8.3.app'
end
