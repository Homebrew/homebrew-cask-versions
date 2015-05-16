cask :v1 => 'vivaldi-snapshot' do
  version '1.0.174.8'
  sha256 'd363a3208176f276128866561fa3f3c055d0545e896de269163d4010fae66bf4'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
