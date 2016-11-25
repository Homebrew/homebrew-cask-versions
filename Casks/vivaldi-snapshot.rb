cask 'vivaldi-snapshot' do
  version '1.5.676.6'
  sha256 '721f782605dd75b1430db9e1d428e2174b9f9d53133c05cf3f27d2d9ded171ed'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '6139bcc7f64a7707daa8ff1a741f2375a877b91bd3b96acef564a1d4de5a78f2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
