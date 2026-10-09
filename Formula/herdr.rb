class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.21"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.21/herdr-macos-aarch64"
      sha256 "f8f627d93ecbe4704b435d4264d8aeb4394d7fa20c17cec6f3badcefe82929aa"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.21/herdr-macos-x86_64"
      sha256 "fd8f6eef0865cfb82877bb7d7f1beaf7113d11890575b24499fb6e5b82d83ca6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.21/herdr-linux-aarch64"
      sha256 "8c0ee884ef637dcc1a5e3f964b51762215df18934016fe0da83df3bc387351ca"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.21/herdr-linux-x86_64"
      sha256 "f4cdcb07019132b48ed46c74e065e3d65769aa484dc881fc0f9eeaf20d0c9f45"
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
