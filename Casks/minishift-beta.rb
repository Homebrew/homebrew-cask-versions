cask 'minishift-beta' do
  version '1.0.0-beta.4'
  sha256 '9b15ed1c0d5386be3a5e9014ef633664c3d797a20ace15c580c48f5b905b9d26'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '62cb709cd9a1fb5a357cb74cac835ab9c18bd9249ebf8a9aad801ca017ea7046'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
