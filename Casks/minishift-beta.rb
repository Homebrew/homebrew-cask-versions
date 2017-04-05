cask 'minishift-beta' do
  version '1.0.0-rc.1'
  sha256 'be9c96ca8b081b52adbbdaa5fb49380e1be4fc5e048ce336b279f83bcb070af0'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '88f9d8b5367d3fd4715f4b1c8ae9106019fe8782ea5b963eca91813715ee6227'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
