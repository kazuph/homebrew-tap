class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.67"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.67/herdr-macos-aarch64"
      sha256 "820465fa459bbd89571762e7d28282c38caf234fced924f313961e9de8f4ca20"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.67/herdr-macos-x86_64"
      sha256 "6abb7574dc12227351b1a45ec8a46a531481b73685965c489f9ea51f5b4ecada"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.67/herdr-linux-aarch64"
      sha256 "743682ae1ec518da2c6d4cb5d5c82a29fc3b366c7b7b0ae3b8fa5b937ea15341"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.67/herdr-linux-x86_64"
      sha256 "05b0499f172706607b886ca4e1c08b2e06c1752dcfe11e54a0c109a760b4487d"
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
