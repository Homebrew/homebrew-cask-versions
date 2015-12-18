cask 'oclint-nightly' do
  version '0.9.dev.d18b401'
  sha256 '6c14a116b1a87139f5b646f1e2119ba0aef717cb68853f1060c69d2197547d06'

  url "http://archives.oclint.org/nightly/oclint-#{version}-x86_64-darwin-14.5.0.tar.gz"
  name 'OCLint'
  homepage 'http://oclint.org'
  license :oss

  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/lib/oclint", :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
