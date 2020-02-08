cask 'toggl-beta' do
  version '7.5.26'
  sha256 '81ec58d5e4bfb29c8c9122eac54f12472ff3fd592fa3d3ce4565644fbbf2ab51'

  # github.com/toggl-open-source/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
