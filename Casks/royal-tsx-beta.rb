cask 'royal-tsx-beta' do
  version '2.2.0.1000'
  sha256 'e547054b6ce818d1429701804069d0aec7c5e494f9b757e2068093bb6ca4c9a2'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
