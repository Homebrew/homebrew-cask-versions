cask :v1 => 'vivaldi-snapshot' do
  version '1.0.258.3'
  sha256 '321231c072466f73a7c521991b2d4996fb18f391823698a3970015c163fd75bf'

  url "https://vivaldi.com/download/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          :sha256 => 'd50beebc7a8e20aae1a9bdc7fc539d981b91e286a62b868976f4c595f8192a58'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
