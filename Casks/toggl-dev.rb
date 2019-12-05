cask 'toggl-dev' do
  version '7.4.1065'
  sha256 '70ab7f1f27c96a5c22a8cba2a1950b7ca36843ab383871d64b828c16b167df5b'

  # github.com/toggl-open-source/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
