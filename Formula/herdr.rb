class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.5/herdr-macos-aarch64"
      sha256 "9dc8c9cf71be4c26c46aefa0b4ba2759447804ef34fbcda598a06529053bfcb0"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.5/herdr-macos-x86_64"
      sha256 "b70bec3c29012668a1f6c76c4c43c5352f4d6098343855e06d30756c9c924138"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.5/herdr-linux-aarch64"
      sha256 "852be3a08f58cb12730732012788c26e2e3d5f53a40dc72827c8ebe8bce884ff"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.5/herdr-linux-x86_64"
      sha256 "78a32c177321e9b884d12c37e93e903bc9b867a2541932bff35add1ac8f3adc0"
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
