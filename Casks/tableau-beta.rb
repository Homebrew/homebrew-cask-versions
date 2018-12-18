cask 'tableau-beta' do
  version '2019.1-Beta2'
  sha256 '3a2fb89e9514f2fd0c3da3ec3bc923b0369ae381c9447e95cb6337b60b211185'

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
