cask :v1 => 'vivaldi-snapshot' do
  version '1.0.300.5'
  sha256 'faf02c7afe101cf1ff463926e5ecdd70aff251d91402f9e3dc76705b5b94bab8'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'ae3c7821f2bd1562503e8fdc5771f0c684fd51279ff1c0af75a8c643e637ecd6'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
