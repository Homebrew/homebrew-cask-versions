cask 'toggl-dev' do
  version '7.4.142'
  sha256 '40be81ef8fdffaa68cc73c26145658cf20d5504841c04070c6c9187592bd8a53'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'cc98877a2a83b8e4a9a930769483266d5ab55a4a29808cf94158875200aab8ef'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
