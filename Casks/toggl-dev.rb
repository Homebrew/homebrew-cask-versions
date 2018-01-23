cask 'toggl-dev' do
  version '7.4.91'
  sha256 'db15819a99fc8df8eeb797ec3d2f0ef424a69d90a1a088cc62314858e03edb28'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '75669ded4437bf01ff1965d00f2bc4d1e3de1d9894b62944bebb4aef631b49ef'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
