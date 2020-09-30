cask "blender-lts" do
  version "2.83.7"
  sha256 "0fb29c0ae48b12b2e1cef4d7ebcb4bc68b98ebe3e7c7c56db74c3c0528455148"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macOS.dmg"
  appcast "https://www.blender.org/download/lts/"
  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

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
