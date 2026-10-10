class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.28"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.28/herdr-macos-aarch64"
      sha256 "65cd255b3abf4605eecd5d8807b4f76d07c1b54701403ca4862d8605e5ec6b20"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.28/herdr-macos-x86_64"
      sha256 "0cdf6a2164582a2515216402248f392f21ddc2db01a9ba0e9bbbf953eb7f9801"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.28/herdr-linux-aarch64"
      sha256 "808230e431ca1f4ecd72242b08e6256901b58b9d6f1643070863916f9acd212a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.28/herdr-linux-x86_64"
      sha256 "642a0fa5171dd2cf1ea5ce74d26766ef80e93871d6337f24b9358f49c8d1f1fc"
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
