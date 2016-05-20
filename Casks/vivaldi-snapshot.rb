cask 'vivaldi-snapshot' do
  version '1.2.485.14'
  sha256 'a8063fbe9adf3ff69c854447635dc9b61acb26f433ba549ea52a8f042c1c08ee'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'dee9c9c2003a81675f8c0e468b0fd124a53170288eeca8d2ee3579d578a6145d'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
