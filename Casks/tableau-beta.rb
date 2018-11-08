cask 'tableau-beta' do
  version '2019.1-Beta1'
  sha256 '60876185901e23071b0b115fa4be520838b49aa821539f7c247fcaf3bd62ce45'

  url "https://beta.tableau.com/#{version.major_minor}/Tableau-Desktop-Mac-#{version}.dmg"
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
