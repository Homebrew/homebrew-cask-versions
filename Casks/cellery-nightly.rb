cask 'cellery-nightly' do
  version :latest
  sha256 :no_check

  # cellery-installer-resources.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://cellery-installer-resources.s3.amazonaws.com/cellery-macos-installer-x64-latest.pkg'
  name 'Cellery'
  homepage 'https://wso2-cellery.github.io/'

  depends_on cask: 'osxfuse'
  depends_on formula: 'python'
  depends_on formula: 'torsocks'
  depends_on formula: 'sshfs'

  pkg 'cellery-macos-installer-x64-latest.pkg'

  uninstall pkgutil: 'org.cellery.*'
end
