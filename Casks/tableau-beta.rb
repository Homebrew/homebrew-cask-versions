cask 'tableau-beta' do
  version '2018.3-Beta2'
  sha256 'ffa6ae53e7e908bbe2d06934862e58261baa3a4262680262735d779bf254ef2e'

  url "http://beta.tableau.com/#{version.major_minor}/Tableau-Desktop-Mac-#{version}.dmg"
  name 'Tableau Desktop'
  homepage 'https://www.tableau.com/'

  depends_on macos: '>= :yosemite'

  pkg 'Tableau Desktop.pkg'

  uninstall pkgutil: [
                       'com.amazon.redshiftodbc',
                       'simba.sparkodbc',
                       'com.simba.sparkodbc',
                       'com.simba.sqlserverodbc',
                       'com.tableausoftware.Desktop.app',
                       'com.tableausoftware.DesktopShortcut',
                       'com.tableausoftware.FLEXNet.11.*',
                       'com.tableausoftware.mysql',
                       'com.tableausoftware.oracle',
                       'com.tableausoftware.postgresql',
                     ]
end
