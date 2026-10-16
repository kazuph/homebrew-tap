class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.57"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.57/herdr-macos-aarch64"
      sha256 "5f90f986ccd71debcb47c070a7d29f6a7b99b3116bf8aa89735c4d5192c9508e"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.57/herdr-macos-x86_64"
      sha256 "509b345e4eaac029daa9a095ba942f01bcb2a38790f16cd6c8e2d1996eb3dc2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.57/herdr-linux-aarch64"
      sha256 "319614b83fb7b0dbbc9cdf22be870b5c515468af379d424ad79d307e22b3a0b3"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.57/herdr-linux-x86_64"
      sha256 "813a1eb82775042484cd208d3aaa5abb3df6b3f18970b24999dc519865d84c45"
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
