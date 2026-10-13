class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.43"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.43/herdr-macos-aarch64"
      sha256 "6176bf0295441ef345c0a7bd81ecf49d5e870e304ff612debca2357e21f1180d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.43/herdr-macos-x86_64"
      sha256 "6fe6e95427bd38cccba374475d3fcba96095a85247fa29b08d61360b8049332b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.43/herdr-linux-aarch64"
      sha256 "65c39fab29f74a3dd906ce7ebef23628a0898dece14496065ddae7d5690269ac"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.43/herdr-linux-x86_64"
      sha256 "d907110043c720df458201658f5028215167582e6ca557c2b9f384fa5337de84"
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
