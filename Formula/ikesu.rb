class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.110"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.110/ikesu-darwin-arm64"
      sha256 "80c252dd9c99f2617901f7d95ad2915f1dd570c34c81b538dd8fc689ae1b8ab5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.110/ikesu-darwin-amd64"
      sha256 "16c14d64d5fec0fdfe268518fd1e316c3b54dc325f4acfa85f02bee525503d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.110/ikesu-linux-arm64"
      sha256 "d39bd74cd39638c2e9d5f9e9ff6bc50fb70d9fb9807fa9438455b9ee9e88c4d3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.110/ikesu-linux-amd64"
      sha256 "9b8fa6adbe8bc300669951a3c79ebdcad43b5e7b00bd1d81808425fe3cd8b1cd"
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
