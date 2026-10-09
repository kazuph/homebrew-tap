class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.24"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.24/herdr-macos-aarch64"
      sha256 "4d9e1e804f8722c058e335784e57eb0d187844f727111998e822d6f29b549311"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.24/herdr-macos-x86_64"
      sha256 "b41ecf092fbdde457b1c1082f59b7e22a63c0749be54a5f8923ff8002d0354d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.24/herdr-linux-aarch64"
      sha256 "454ce17c41fa20a83a7ac85f1803c936111e7a6a7ef4da87f8d8ac025dfd7ab0"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.24/herdr-linux-x86_64"
      sha256 "fe6e85610c9379526feb31be02ec66d65b8535a40f78c1a03b67cd0cc4fac0e2"
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
