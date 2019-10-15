cask 'prince-latest' do
  version '20191014'
  sha256 '7d7fd4ce7889411f05ea8e77dd0061b3c2b2ba6416c78f8cac5f7789240ccc12'

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
