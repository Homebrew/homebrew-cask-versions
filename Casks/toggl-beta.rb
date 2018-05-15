cask 'toggl-beta' do
  version '7.4.159'
  sha256 'ce9ccd1b0be4ee05b1cd5553f38421305e8740836ee997b9ba98c7a53e804e79'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'bbcd4b6f700eee2aefb52de49b84ba74bf8a6754f10a7bbe27d50588d9e05085'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
