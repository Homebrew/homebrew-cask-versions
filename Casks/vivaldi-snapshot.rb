cask 'vivaldi-snapshot' do
  version '1.3.501.6'
  sha256 'dd427090b974a5bc5fd9855c6e247303b92a2bd8962de44273e13bda4cc20f4c'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd6aa6a704bc2be8b5cacebaf60f59161dc49b2f6dc05c23e5c951879ba8e5fa5'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'
  license :gratis

  app 'Vivaldi.app'
end
