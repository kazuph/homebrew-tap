class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.33"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.33/herdr-macos-aarch64"
      sha256 "77f252203bca4d2806b1789aa4015cdd97cb439b747506f448dc18da62b9959a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.33/herdr-macos-x86_64"
      sha256 "c9d8e1210d2d8072ad82f4c9fe7f31db7d76ee061b511d3faaad30c6c55847f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.33/herdr-linux-aarch64"
      sha256 "9405af1225b65b2a654775af916e7cfb8328c0c7f1e5f78fed2f4c88fba782a3"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.33/herdr-linux-x86_64"
      sha256 "9763dc2cdfd3aa49e84b043808b1d716542a7e2e55b21ec8202cf58637a08015"
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
