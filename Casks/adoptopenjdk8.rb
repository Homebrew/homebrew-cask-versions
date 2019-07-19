cask 'adoptopenjdk8' do
  version '8,222:b10'
  sha256 '21b4e428746cd7b930f4ffb5de53850a2a8e9a08bb53346b6e81567639473603'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk#{version.before_comma}u#{version.after_comma.before_colon}-#{version.after_colon}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases.atom"
  name 'AdoptOpenJDK 8'
  homepage 'https://adoptopenjdk.net/'

  pkg "OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}u#{version.after_comma.before_colon}#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.before_comma}.jdk"
end
