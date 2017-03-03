cask 'toggldesktop-dev' do
  version '7.4.25'
  sha256 'a1be39fdc477ee94ff27d7749b4693be9fa639a9fb0eee6128569500c215c1eb'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '7d415f36fcd10a5450af4934a11723571a75adf26cdccfc37ae4126880abefc0'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
