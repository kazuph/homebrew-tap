class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.25"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.25/herdr-macos-aarch64"
      sha256 "4d2b5302f0c3613fe2bafff5338d84090281e6622f4f050bad22ec28d07cff38"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.25/herdr-macos-x86_64"
      sha256 "4cfee5d5b3d214b283a02213a104ff55b9f0f24cbcb1ad290b0ddb6ebaa635d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.25/herdr-linux-aarch64"
      sha256 "1cd568a12bb142af6d847d8ab42911f79310ca266730850c1658e82be872e474"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.25/herdr-linux-x86_64"
      sha256 "0471cea3bf7e57e976c48a3ec5451a8f7b50bb9611bb58790ed4f8689710504d"
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
