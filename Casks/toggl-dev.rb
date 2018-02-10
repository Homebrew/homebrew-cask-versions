cask 'toggl-dev' do
  version '7.4.122'
  sha256 'f22d8cc92b0e5546e0b2bd47ee00fb6f92469553b7155e05db91336da7e56987'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '48aedca1b7a7b28aa56681c2ccb343af38829debb0408dcd44538b443a794b01'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
