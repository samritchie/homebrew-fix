class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.7.0/forge.zip"
  sha256 "6e6701fb88a5781e9277ee315902b450fbac79303ab6ee4fd72f4d83bc897f7a"
  depends_on "mono"

  bottle :unneeded

  devel do
    url "https://github.com/fsprojects/Forge/releases/download/1.0.0-alpha007/forge.zip"
    version "1.0.0-alpha007"
    sha256 "38b35ffe9cc52d5fd88fd572b7a85a34590005d814b918479ce1738e3c05cb2d"
  end

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/forge.exe "$@"
    EOS
  end
end

