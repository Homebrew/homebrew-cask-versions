cask 'toggl-dev' do
  version '7.4.159'
  sha256 'ce9ccd1b0be4ee05b1cd5553f38421305e8740836ee997b9ba98c7a53e804e79'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '6b382a6878f98b0e615889d7834fdd236af4d791a72b980f75b5bd6ecd3cc4c0'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
