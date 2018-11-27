cask 'swift-development-snapshot' do
  version '4.2,2018-11-30-a'
  sha256 '7778e80aeaa85d18d31d0edabcdcdba7c3a5d11165371aacf601bba56c4264a1'

  url "https://swift.org/builds/development/xcode/swift-DEVELOPMENT-SNAPSHOT-#{version.after_comma}/swift-DEVELOPMENT-SNAPSHOT-#{version.after_comma}-osx.pkg"
  name 'Swift Language Toolchain Development Snapshot'
  homepage 'https://swift.org/'

  pkg "swift-DEVELOPMENT-SNAPSHOT-#{version.after_comma}-osx.pkg"

  uninstall pkgutil: "org.swift.#{version.before_comma.no_dots}#{version.after_comma.delete('-')}",
            delete:  '/Library/Developer/Toolchains/swift-latest.xctoolchain'
end
