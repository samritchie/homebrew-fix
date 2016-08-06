class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.7.0/forge.zip"
  sha256 "6e6701fb88a5781e9277ee315902b450fbac79303ab6ee4fd72f4d83bc897f7a"
  depends_on "mono"

  bottle :unneeded

  devel do
    url "https://github.com/fsprojects/Forge/releases/download/1.0.0-alpha012/forge.zip"
    version "1.0.0-alpha012"
    sha256 "54fbd49e63e9aa92048a3cbb4bfd6eaeaae214549f47968dfa655eb74d081e46"
  end

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/forge.exe "$@"
    EOS
  end
end

