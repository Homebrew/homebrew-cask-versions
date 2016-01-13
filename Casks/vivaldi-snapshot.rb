cask 'vivaldi-snapshot' do
  version '1.0.365.3'
  sha256 'c734929c0238eb1901ee9bc210bb73a5c960871c078cfa8228bba9cce023ceda'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :checkpoint => 'e88253ae777589ebf57b6e5921d531c91c7789d6bdab7fcd9156d45635723b41'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
