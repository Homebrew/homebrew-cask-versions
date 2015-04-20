cask :v1 => 'tableau82' do
  version '8.2.9'
  sha256 '2644c7b9fd6c453d00f6641ddb681b87ba5cdfa16c6d840163295fc176f54ee1'

  url "https://downloads.tableau.com/esdalt/#{version}/TableauDesktop.dmg"
  # Alternate version download site
  homepage 'https://www.tableau.com/esdalt'
  license :unknown

  app 'Tableau 8.2.app'
end
