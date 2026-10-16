class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.59"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.59/herdr-macos-aarch64"
      sha256 "94a7f0125fa16c9afa2be171264664f5d0966aeb2fe7e86b1a10ca17c661a5b8"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.59/herdr-macos-x86_64"
      sha256 "ec7432e5d4dabb6efd8307a460c105509b3ac81b3e9d9e147c9ddbe688e16970"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.59/herdr-linux-aarch64"
      sha256 "31cbd59eaadc8d950910fedb946f1f6a370065c66c39c8f1d26de1231306684d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.59/herdr-linux-x86_64"
      sha256 "114d786870ebbaf13bd8363070102220b202707fc08cafea58be757d4a686079"
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
