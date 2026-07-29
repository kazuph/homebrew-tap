class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.0/herdr-macos-aarch64"
      sha256 "18d0e9456e7871e8a88fa3415164bf0355a2611474d200d538bee0843ec8d5ed"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.0/herdr-macos-x86_64"
      sha256 "8334dc000f7a856f0ccdb953f291935f5919eb31f490c26c32ece8f2d0d4f220"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.0/herdr-linux-aarch64"
      sha256 "f9feab966b04d828bb2bad0e4daf272fe9a59b4fb27324858a93abfdaf9e4be3"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.0/herdr-linux-x86_64"
      sha256 "79377bb81b42517603dc7f12f7b545cce47512982deb51ce99ca2e29c3fc055e"
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
