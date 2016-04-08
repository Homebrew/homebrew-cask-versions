cask 'vivaldi-snapshot' do
  version '1.1.443.3'
  sha256 'aeab2facd19f171fa7a6ff22c5dafaab5cfce350bbe8f80f2f933344e4476326'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd63286faf1b30ffcbd9a9c5449f728dcf2fa0faeb3be8690a8f948ce567aa5d8'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
