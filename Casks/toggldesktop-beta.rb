cask 'toggldesktop-beta' do
  version '7.4.18'
  sha256 'e0e6a2a44e91fb34fba9d7cb1e3a41a288ec55da9415efae18a83b396ab88287'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '9aaab086611a52c3a30cd435fc87e6b28e293175b00fc6446e883b4fd9218ade'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end
