class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsharp-editing.github.io/Forge"
  url "https://github.com/fsharp-editing/Forge/releases/download/1.1.3/forge.zip"
  sha256 "c5e703e4b1d59ee4f703a86d99efe60f09e5792de0c93444b897301993ac4c4b"
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

