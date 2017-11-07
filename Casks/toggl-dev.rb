cask 'toggl-dev' do
  version '7.4.79'
  sha256 'ea4b12f914acb8377ad2d19da0b9d2660d1b4a315887155ae906cdc0206800fa'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'fb4aafcc9805560e7ffb7ee8476497cdbdc87beb70c4fae414c4bc725358e7bd'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
