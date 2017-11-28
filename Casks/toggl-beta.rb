cask 'toggl-beta' do
  version '7.4.84'
  sha256 '22ef7b89f9ce04a24621f25e4d1f025c6391ec690ec773b74a244e5f8b425466'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '8156a0724a5e5e46c0a074c653e6bdf0d345444507669c71dc7dcd9eb5d9148e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
