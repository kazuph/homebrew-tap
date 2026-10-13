class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.36"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.36/herdr-macos-aarch64"
      sha256 "4c9e995df3478b9e5428473fcd9b9c2f48d6334e89d2cc2dd99fd69f0103abd1"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.36/herdr-macos-x86_64"
      sha256 "d0980053ac5ef0b004e1eb948562ad69f7030a47310412448a6493ebda0c7ea0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.36/herdr-linux-aarch64"
      sha256 "90940a78fcce45e6f5e2a223d8252c3fa9b9d2384a05a67e749726a122c4f245"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.36/herdr-linux-x86_64"
      sha256 "fd7cbcb745c8f2919dbbeddce82d13d9e8d3b4cec83be86ee187aa7271782576"
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
