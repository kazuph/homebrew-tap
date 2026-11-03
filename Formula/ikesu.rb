class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.66/ikesu-darwin-arm64"
      sha256 "5cc6ba73c73c039155a494dc831453caf2bd544bb425edaee433b23d48ae1229"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.66/ikesu-darwin-amd64"
      sha256 "e06335305acfc1ab91932423bc559c773f0a85bfe12cc76d42d023b9d57eda38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.66/ikesu-linux-arm64"
      sha256 "79246e2af65f75c487911737b9d46c00bfd34ec95f1bdac58908758bc5aa6d65"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.66/ikesu-linux-amd64"
      sha256 "16688ec6d410e2369ba87e029b916df24a717b90af9e9f8ac4d176fe3ab5830f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
