class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://forge.run"
  url "https://github.com/fsharp-editing/Forge/releases/download/2.0.0/forge.zip"
  sha256 "fed744218ed5c732f12b2c8d4d63752117949c2c7fae31bb999037e5c8f06a52"
  depends_on "mono"

  bottle :unneeded

  def install
    libexec.install Dir["./*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/Forge.exe "$@"
    EOS
  end
end

