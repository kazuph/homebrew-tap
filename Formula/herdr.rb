class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.10"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.10/herdr-macos-aarch64"
      sha256 "5feab51a936f309ef5141ff2237e387b45806e6b601b83eceaeb1486dc54b88e"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.10/herdr-macos-x86_64"
      sha256 "04b4dcf8c47046c6e33789e679cf655c4afdc1607f8db1019ba1886685c622a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.10/herdr-linux-aarch64"
      sha256 "0ba100c28554260252e075a52ce8404c0eee78ab68de951754e7ab52331fd528"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.10/herdr-linux-x86_64"
      sha256 "b048554c8662cd11ecfeeb1685ace1712cf425c259e7704edde272c8fc21301e"
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
