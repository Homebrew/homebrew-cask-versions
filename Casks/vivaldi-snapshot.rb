cask 'vivaldi-snapshot' do
  version '1.0.365.3'
  sha256 'c734929c0238eb1901ee9bc210bb73a5c960871c078cfa8228bba9cce023ceda'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => '9542a4a3fd672965f938f996793d4a459624bfc956af9f7d302604a699ef2f47'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
