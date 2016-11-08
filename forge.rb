class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsharp-editing.github.io/Forge"
  url "https://github.com/fsharp-editing/Forge/releases/download/1.1.2/forge.zip"
  sha256 "791abc45980ef648d3e064d74417a09b93d93fbff32790d6ee7cf0c9f2167481"
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

