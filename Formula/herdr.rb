class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.58"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.58/herdr-macos-aarch64"
      sha256 "7552b64dca911541b86c890396e261468017a893c1a745999dd19ef0acd4813f"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.58/herdr-macos-x86_64"
      sha256 "babb59ca9ca847e01ea7759d4c1c0914798a3e72dadad5f020ee78394acb4c16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.58/herdr-linux-aarch64"
      sha256 "13a937ebb461962f17783f59dcdd855cccdf311c31fcfe3bbc6e47fb9d6641a5"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.58/herdr-linux-x86_64"
      sha256 "8963924962fdabdb9d79b1827e6149e25bea2b81add6a4c5ab6cd176142183e4"
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
