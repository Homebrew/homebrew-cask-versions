cask 'webkit-build-archive' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://webkit.org/build-archives/'
    macos_release = if MacOS.version == :sierra
                      %r{href="([^"]+mac\-sierra[^"]+.zip)"}
                    else
                      %r{href="([^"]+mac\-highsierra[^"]+.zip)"}
                    end
    file = URI(base_url).open.read.scan(macos_release).flatten.first
    file.to_s
  end
  name 'WebKit Build Archive'
  homepage 'https://webkit.org/build-archives/'

  depends_on macos: [
                      :sierra,
                      :high_sierra,
                    ]

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/webkit.wrapper.sh"
  binary shimscript, target: 'webkit'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        '#{staged_path}/run-webkit-archive' "${@}"
    EOS
  end
end
