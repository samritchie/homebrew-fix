class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/1.0.1/forge.zip"
  sha256 "b45a9ee51613e1ffbef49c677f9425f9fe85155c303f813251f88403b3c19322"
  depends_on "mono"

  bottle :unneeded

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/Forge.exe "$@"
    EOS
  end
end

