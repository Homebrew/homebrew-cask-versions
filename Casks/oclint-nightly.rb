cask :v1 => 'oclint-nightly' do
  version '0.9.dev.02251e4'
  sha256 'b37aa6e04fe7545d7daf7a93c0afd49998946ee918ea5bb1782dd17e0deb4c2f'

  url 'http://archives.oclint.org/nightly/oclint-#{version}-x86_64-darwin-14.0.0.tar.gz'
  homepage 'http://oclint.org'
  license :unknown

  binary 'oclint-#{version}/bin/oclint'
  binary 'oclint-#{version}/bin/oclint-json-compilation-database'
  binary 'oclint-#{version}/bin/oclint-xcodebuild'
  binary 'oclint-#{version}/lib/oclint', :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
