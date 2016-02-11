class Fix < Formula
  desc "Fix (Mix for F#)"
  homepage "https://github.com/fsprojects/Fix"
  url "https://github.com/fsprojects/Fix/releases/download/0.4.0/fix.zip"
  sha256 "a74dc0e50bcf7db5e9380c67c4374ad148b7c107dcbc47425a4a3c36026fcf7a"
  depends_on "mono"
  
  bottle :unneeded

  def install
    libexec.install Dir["bin/*"]
    (bin/"fix").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/fix.exe "$@"
    EOS
  end
end