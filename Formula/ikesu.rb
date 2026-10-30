class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.43/ikesu-darwin-arm64"
      sha256 "e56e3c23a025f6eaa9a5383b98d50c681a99e584043a846ec92acb559e04a857"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.43/ikesu-darwin-amd64"
      sha256 "b24334ed117d8fedf5d3cd9b5ecb3731ff32e138b90912217fbf4ec8b5a86dc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.43/ikesu-linux-arm64"
      sha256 "26323939b627f7f0abbdaf45af174f5115b5ed65a446dda906819a4c77eb4ee7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.43/ikesu-linux-amd64"
      sha256 "d03b72805218c92951df7800a797858ed953143e2a05183a42509a4bc600efdd"
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
