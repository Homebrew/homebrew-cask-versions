cask :v1 => 'vivaldi-snapshot' do
  version '1.0.219.50'
  sha256 'a2305759169d6ecba62019d3bb5ab7e386fa60d30db246d16c12f8cb57f50fcf'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
