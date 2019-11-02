cask 'prince-latest' do
  version '20191023'
  sha256 '5fb599924d784d589edee5798faca5f05e3accaecf206cdb8dfaa269725cb729'

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
