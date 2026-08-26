class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.6"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.6/herdr-macos-aarch64"
      sha256 "e6264cc20fd13268f922777c0eb59e338b2f68009b8562fb1d5e7b8ad1946214"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.6/herdr-macos-x86_64"
      sha256 "8f1bd8732aea07b524f0848dd9ac554c7d5ebd53885fc6395091f6496984def6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.6/herdr-linux-aarch64"
      sha256 "67a8e2af0b422ca9d8517db4d7c9424d5d4642791bcb21ddd3d77e4a99438f9d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.6/herdr-linux-x86_64"
      sha256 "d394be65cb3f2c32b04640b2fc82d76db91c676ee05f07c0f50a6d3c4b588a2f"
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
