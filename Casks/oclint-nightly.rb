cask :v1 => 'oclint-nightly' do
  version '0.9.dev.603daa8'
  sha256 '3cd8a5e5430d454b59bed6887ce521a523342e739b67390593b0c3bb5a5366be'

  url "http://archives.oclint.org/nightly/oclint-#{version}-x86_64-darwin-14.4.0.tar.gz"
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
