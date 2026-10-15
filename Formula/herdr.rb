class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.54"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.54/herdr-macos-aarch64"
      sha256 "3fb5abd79d44b9fb63a53eb4b983f0edc72064fa638cdc6d4a9dd27aaae15d4a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.54/herdr-macos-x86_64"
      sha256 "3311ce8543140045f27b8d1c0190b31a630aaadd827860f51f9c55329195ba23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.54/herdr-linux-aarch64"
      sha256 "eb159adedf601eb0b5f6a91552ff6d0331dc3ce5a8786a4b0d7f0bc570b37b74"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.54/herdr-linux-x86_64"
      sha256 "4795d11e21f175d5aee8843e77506d540497373f265e6eadc338e7e5436e5ab3"
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
