cask 'vivaldi-snapshot' do
  version '1.3.519.25'
  sha256 '710d38264ae30026dd70cc9ee7230c587b95437b3b6bf574cedfba34058e5a22'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '93d72145cc1e138f80b92ec44d2209aa58a2786268f3fff5b5156f0b36f32315'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
