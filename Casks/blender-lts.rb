cask "blender-lts" do
  version "2.83.13"
  sha256 "54224c01c859e44ffbfe852e98e21f0c4d237fb87393798773b5d62e9d36ebfc"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macOS.dmg"
  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/lts/"
    strategy :page_match
    regex(%r{href=.*?/blender-(\d+(?:\.\d+)*)-macOS\.dmg}i)
  end

  conflicts_with cask: "blender"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end
end
