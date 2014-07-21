class OclintNightly < Cask
  version 'nightly'
  sha256 '1d901cf3091c280964c391c3184ca5ebc892a0446fdb3e64c25dbdae3eb8962a'

  url 'http://archives.oclint.org/nightly/oclint-0.9.dev.e350919-x86_64-darwin-12.4.0.tar.gz'
  homepage 'http://oclint.org'

  binary 'oclint-0.9.dev.e350919/bin/oclint'
  binary 'oclint-0.9.dev.e350919/bin/oclint-json-compilation-database'
  binary 'oclint-0.9.dev.e350919/bin/oclint-xcodebuild'
  binary 'oclint-0.9.dev.e350919/lib/oclint', :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
