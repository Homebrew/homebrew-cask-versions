cask 'minishift-beta' do
  version '1.0.0-beta.3'
  sha256 '9b3be4c205aab7e6d562060e1b39ca0ccd5c5fe033d997c1a77b2a1b0109171e'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '3cae2c14bce9583c25ae8b0537faac2176631688fd8e05bc938c4df6e7caf722'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
