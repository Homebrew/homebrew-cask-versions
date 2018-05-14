cask 'toggl-dev' do
  version '7.4.156'
  sha256 'f13d09a5e59296692fe973f6281299f07eb22399eb340ba2ddf0cbfed4fe435b'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '4dc35ce0305b0b31e6c03845619687e51f15afd904fb1c814e5906b58885c367'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
