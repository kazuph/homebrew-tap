class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.12"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.12/herdr-macos-aarch64"
      sha256 "1132d1ba2cd7c4e55e9b61105b0be4a0d2715834218db63f7683d77e8ee984a9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.12/herdr-macos-x86_64"
      sha256 "1c8999e375e242219013ada7e33429267e26bfa7cc50bf025f21cd9149099802"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.12/herdr-linux-aarch64"
      sha256 "29716365a0f5ea9797fb50627ab9c424af9e742d68dbb8d7ec4f4170d8c19d84"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.12/herdr-linux-x86_64"
      sha256 "d23d4b9aa46da01e8d57595a571a5668f35be654b3ad5cd8a65a204a31bf41ce"
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
