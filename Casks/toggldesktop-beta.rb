cask 'toggldesktop-beta' do
  version '7.4.52'
  sha256 'e1f3d35a47d0b150f46aba5457833873932e735a232a1b8eeb5995222fa0bed9'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'b726b959ada19efb3ea5bd2ab6085e6ae55ccb059cba0750226b0e2a6046a96d'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end
