class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.14"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.14/herdr-macos-aarch64"
      sha256 "be446dac396936598a783e0919cdc12c138ba25bff451fa5a2c14d8f5a5ce758"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.14/herdr-macos-x86_64"
      sha256 "ab175a1efb78357bca978161d9c3167b86a34d22e922a0b7bf64ceb533d8aa0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.14/herdr-linux-aarch64"
      sha256 "13f170a4e9552de0c56b2d6b61df87258e9630be70e52d8400059805373d7d02"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.14/herdr-linux-x86_64"
      sha256 "047b2bd754af7a352052d7bf46eb8edd5ba5641bf8163f74109110ba768e199e"
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
