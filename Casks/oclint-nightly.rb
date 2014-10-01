class OclintNightly < Cask
  version 'nightly'
  sha256 'b37aa6e04fe7545d7daf7a93c0afd49998946ee918ea5bb1782dd17e0deb4c2f'

  url 'http://archives.oclint.org/nightly/oclint-0.9.dev.648e9af-x86_64-darwin-12.4.0.tar.gz'
  homepage 'http://oclint.org'

  binary 'oclint-0.9.dev.648e9af/bin/oclint'
  binary 'oclint-0.9.dev.648e9af/bin/oclint-json-compilation-database'
  binary 'oclint-0.9.dev.648e9af/bin/oclint-xcodebuild'
  binary 'oclint-0.9.dev.648e9af/lib/oclint', :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
