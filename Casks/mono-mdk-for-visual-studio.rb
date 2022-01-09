cask "mono-mdk-for-visual-studio" do
  version "6.12.0.164"
  sha256 "8ce0feccb2b1bb0605346dddf7d4bce396de11b3da0635196f8b4da5a1802bc1"

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name "Mono"
  desc "Open source implementation of Microsoft's .NET Framework"
  homepage "https://www.mono-project.com/"

  livecheck do
    url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/"
    regex(/MonoFramework-MDK-(\d+(?:\.\d+)+).macos10.xamarin.universal\.pkg/i)
  end

  conflicts_with cask: "mono-mdk"

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall delete:  [
    "/Library/Frameworks/Mono.framework/Versions/#{version.major_minor_patch}",
    "/private/etc/paths.d/mono-commands",
  ],
            pkgutil: "com.xamarin.mono-*",
            rmdir:   [
              "/Library/Frameworks/Mono.framework/Versions",
              "/Library/Frameworks/Mono.framework",
            ]

  caveats <<~EOS
    This is a version specific for Visual Studio users. This cask should follow the specific Visual Studio channel/branch maintained by mono developers.

    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end
