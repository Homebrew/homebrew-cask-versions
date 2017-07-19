cask 'toggldesktop-dev' do
  version '7.4.56'
  sha256 'c4917a2b06f884713fbd1c666877056a981b51c81d0c6435d7ed151645574b94'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '6080e7b01c478b2720efa0482549fd5e5302c955f4ef26682658f9a5c5f7e050'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
