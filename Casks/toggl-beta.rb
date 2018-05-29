cask 'toggl-beta' do
  version '7.4.170'
  sha256 '7534036ac0cf7c1ce1859029cf635dbf7197345266ec15593cddefd49fa7d762'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '5c1d8cfcf14658ea3dec3c9354e8bf446057eb0ed945ed5e3ef241f91ae9288b'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
