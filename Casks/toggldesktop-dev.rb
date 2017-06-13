cask 'toggldesktop-dev' do
  version '7.4.47'
  sha256 '1dd41946486763c767aa25ecf425e3cbf529c7bd95060a88776655581df627f7'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '6a0c79f360da2c7c4c6f611b04932f57fe5922d83da2edb0e80da3c8d028d50c'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
