class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.56"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.56/herdr-macos-aarch64"
      sha256 "4891369208d900151270d38eefc8ba98bf7c165d7f1b1717416ecaf4669f1098"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.56/herdr-macos-x86_64"
      sha256 "6c2ecb9b21e838e3ccf0c2bde190a56ccaa85e51734345147b6220669dd77489"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.56/herdr-linux-aarch64"
      sha256 "f1795b5ef1181ed3fc261af9953cbfaa16867ddca6836c8943255c2ef468af7a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.56/herdr-linux-x86_64"
      sha256 "459ddc0beaa44af3d1b1ba1e285271cf3ebfe10d8d025a65ea3b40a344a094ba"
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
