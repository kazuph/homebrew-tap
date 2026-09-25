class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.8"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.8/herdr-macos-aarch64"
      sha256 "b8f297d1470e3dbdf78e766ff9fda23d05ce080ece5b2f8d3f234cee730bea0c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.8/herdr-macos-x86_64"
      sha256 "27aa5e301b1f90c897652be478e224d3f72681371f2da012bca2e82cb6c5dbf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.8/herdr-linux-aarch64"
      sha256 "d01fe3311d8e9078bbe29c9223928204fea66765b4be3035ac86c01b83592b9d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.8/herdr-linux-x86_64"
      sha256 "5dc6ff63fabb239d94e075d561b262577ad69d22044249dcf17e2701c6424bd5"
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
