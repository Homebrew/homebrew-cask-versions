cask 'fantastical1' do
  version '1.3.18'
  sha256 '0ac5bc6cfe5d787292d2a5a81bb822a9b5c853261472386bf009bf7ca437472c'
  
  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php',
    :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium
  
  app 'Fantastical.app'
  
  postflight do
    suppress_move_to_applications
  end
  
  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
