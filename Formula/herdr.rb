class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.22"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.22/herdr-macos-aarch64"
      sha256 "6bf86580eb6f5497bb5ad6cb18af77a94fd3802492f4b2a193e9d2991a8a4858"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.22/herdr-macos-x86_64"
      sha256 "09f1bf9298c0ea9047493ac1c15000590781de0d46760d848914cce0d7a70622"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.22/herdr-linux-aarch64"
      sha256 "99144ec055e552d01157e26dd9fe8df5e693e9dcc3e1201f347e1aa9509f0668"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.22/herdr-linux-x86_64"
      sha256 "ab3bedf6fbf2e28e09577e1b4ec606dac73f76dd7e32c4cdde2a215b7fd56c24"
    end
  end

  def install
    artifact = Dir["herdr-*"].first
    chmod 0755, artifact
    bin.install artifact => "herdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr --version")
  end
end
