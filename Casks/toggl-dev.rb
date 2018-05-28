cask 'toggl-dev' do
  version '7.4.168'
  sha256 '0d46c96d0da6f0ac1fed079e9459a0df12fb83231a3f91d06c3cd190c9fc8541'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '1bda102e75cea75fe3ba81b4d8e46470bc898b0871dd1d630fa71e28063bd7ca'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
