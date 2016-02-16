class Fix < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "http://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.6.0/forge.zip"
  sha256 "809e2a16b4b527fd27c6944069f4e1921cc777c2c7bc07ff1f1fc4792bf4d52f"
  depends_on "mono"
  
  bottle :unneeded

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/forge.exe "$@"
    EOS
  end
end