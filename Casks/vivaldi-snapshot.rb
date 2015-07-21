cask :v1 => 'vivaldi-snapshot' do
  version '1.0.228.3'
  sha256 'c4376383b7e508fe4ba56d28688360b767f1ef5885cf1faf0a9cb47ad986ce13'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '0c00cc20a3350eb3d42e4a5f02d4b0a1906b735937bec5fd2a5639a9e58607bf'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
