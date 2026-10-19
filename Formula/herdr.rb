class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.65"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.65/herdr-macos-aarch64"
      sha256 "113eb952e1c0a503a66a5a68fc717ba25a8269fe7db32472f124bc1c52d3da72"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.65/herdr-macos-x86_64"
      sha256 "7c24c7dccd8a63f66c8c483a7047e6c90566570dc00c37256179b3bfe7f3b6fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.65/herdr-linux-aarch64"
      sha256 "d92c03427ebe68c43318dddefd24edc7ddd36306c74aaa953d166d831c6f11b4"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.65/herdr-linux-x86_64"
      sha256 "9ec1e319cb68e2d2a6c71a0a3d207cefbb8ab0741e4edcf840b40d0f76c94569"
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
