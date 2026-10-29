class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.38/ikesu-darwin-arm64"
      sha256 "40509ab996f6df595a05a1c4d0045571d5a86b6108d7756999e62384966f9eb7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.38/ikesu-darwin-amd64"
      sha256 "58e1285b236fbfa49593a861123ad9ad0c4c8585457d75a8373a6941f8f039cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.38/ikesu-linux-arm64"
      sha256 "c16cf0ec5493dc1e83ae1ce1633fc77a9ef80aaecdac3cf1093c933d9e709c75"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.38/ikesu-linux-amd64"
      sha256 "d861ced797091cbe61cfa5657727ffab1f260619443613b9581afcb50a337cbb"
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
