cask :v1 => 'vivaldi-snapshot' do
  version '1.0.228.3'
  sha256 'c4376383b7e508fe4ba56d28688360b767f1ef5885cf1faf0a9cb47ad986ce13'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
