cask 'toggl-dev' do
  version '7.4.135'
  sha256 '11914f931e2c2f1c910481a665a8b00c84f8413c3a8d719e3ebce38f5d27f29a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '39fb054ea16045dc04f772d7a3d554ff4709c9c37c14cc6d6fb70ff60aa7a5d6'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
