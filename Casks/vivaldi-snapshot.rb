cask 'vivaldi-snapshot' do
  version '1.14.1036.3'
  sha256 '373406481dc27835f26b8e6fe38a1f1baccb4ca63dec208277bd6d7bdb2a3489'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '3520d5b599966b0cc5127659c52a43a3a507f9ccafbb5a380fe553d5319f109f'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
