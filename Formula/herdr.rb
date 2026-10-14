class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.47"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.47/herdr-macos-aarch64"
      sha256 "861cec8b471efcd3a80effe86a73e74a4278aee0ff43cf8eaabab43c7006c0ca"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.47/herdr-macos-x86_64"
      sha256 "b208a16013304a7fb5701d65e61472138f6fc05a1cd342802ff05049817856d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.47/herdr-linux-aarch64"
      sha256 "92006248c64078ef0c009d851fed0a4ee28190520665beb64ce54b487682cf7d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.47/herdr-linux-x86_64"
      sha256 "06a458bb4b24ece916a3751280ce772e23436ed71cbbbf7cf0610347bd3f4129"
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
