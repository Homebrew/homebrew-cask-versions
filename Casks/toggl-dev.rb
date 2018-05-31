cask 'toggl-dev' do
  version '7.4.176'
  sha256 'e65b2c00214bfbb185bfb1818de2fe5d063cb13fe549940292b60e967e67cad3'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'b20eebfd4c00bcb6e55f57fe3f1543564a949545f4d0e8e12db2212f482e0a94'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
