class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.44"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.44/herdr-macos-aarch64"
      sha256 "8135c7c518975b12b72634fd52966dfebf7b5b77ccfb40cb57d08ef040806e75"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.44/herdr-macos-x86_64"
      sha256 "1b82cfa729d4992cdb8f8d11253e98fe559784bdc5ee530cc39d04dd97d72807"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.44/herdr-linux-aarch64"
      sha256 "8887fc3f27d39dbc0a1d0f067391aa46da24e4a0327ae2e1b313128378367e9c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.44/herdr-linux-x86_64"
      sha256 "ac47d61ce7118ec6dd9693e85d63b91169cefdd7e9a76b9264d9662c61c85c65"
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
