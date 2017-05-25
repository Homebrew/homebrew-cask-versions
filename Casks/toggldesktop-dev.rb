cask 'toggldesktop-dev' do
  version '7.4.40'
  sha256 'b125f6cee7adaa8256de77a38068220172588aa1775a7b82332975b3ca49007f'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '89fda5bdf78b28f10c09bccb86e3a88e5492fd3ded7bd0080bff07cda66a284e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
