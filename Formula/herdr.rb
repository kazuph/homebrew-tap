class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.34"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.34/herdr-macos-aarch64"
      sha256 "56425f85ddef29c6efb42d60fa0be698616a1c2e254be8d8341fc60f6a4a188d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.34/herdr-macos-x86_64"
      sha256 "f0fe1b48916d92d8416daa5a6edfca0ecaf99ba44e5c978436b85240559a32cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.34/herdr-linux-aarch64"
      sha256 "b43b7f2234fcd9fb1261106e6cff23bef78af9a53f6a3c764829e31c1efa73be"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.34/herdr-linux-x86_64"
      sha256 "dfcfb505b19a0ad356922d9bb63faa1fd32b76436c5cb9c66659ea7ed4312bcd"
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
