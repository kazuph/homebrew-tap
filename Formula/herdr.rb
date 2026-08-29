class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.0/herdr-macos-aarch64"
      sha256 "cbe163ebde75a0fc24c3c59a81a0759f32c7f40d8e24ccbd99856ec05ae02f68"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.0/herdr-macos-x86_64"
      sha256 "ed575efe8e45c8942d71801e3120825fee251eda2b0e2f1206ad69818223acc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.0/herdr-linux-aarch64"
      sha256 "eecb17fed84dd54cc7b82e00cf03ad63c67d8b7df28505f9fb2dda9d24f467ea"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.0/herdr-linux-x86_64"
      sha256 "c23c55efe31c800e86035b603b488d4e6fa519fc5e7f0c57dd857db7188a4197"
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
