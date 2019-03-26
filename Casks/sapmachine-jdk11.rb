cask 'sapmachine-jdk11' do
  version '11.0.2'
  sha256 'c17526aca0891ab291916faeca7a6cdcef77d63de8acb8362c1af0eb95a9c680'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.tar.gz"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine'
  homepage 'https://sapmachine.io/'

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'
end
