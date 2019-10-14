cask 'prince-latest' do
  version '20191002'
  sha256 'a874953d84c7bf2bda08a2ee829fe75bad0c1fc2a9e61dc39a717c55931509e2'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/latest/'
  name 'Prince'
  homepage 'https://www.princexml.com/'

  conflicts_with cask: 'prince'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macosx/prince.wrapper.sh"
  binary shimscript, target: 'prince'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macosx/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macosx/lib/prince' "$@"
    EOS
  end
end
