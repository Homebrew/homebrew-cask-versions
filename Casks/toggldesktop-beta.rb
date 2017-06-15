cask 'toggldesktop-beta' do
  version '7.4.47'
  sha256 '1dd41946486763c767aa25ecf425e3cbf529c7bd95060a88776655581df627f7'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '488bf8d588a185a9ab048bf0e129a7c13f0f3a1f52611f3a668e7223179eb406'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end
