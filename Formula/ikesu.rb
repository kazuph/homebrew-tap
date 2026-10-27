class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.14/ikesu-darwin-arm64"
      sha256 "33b5adef7caa4836286da404387515c04db273b862d4008e9292e68a653513b3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.14/ikesu-darwin-amd64"
      sha256 "7f4d3f8e29429ac6339b470245728290e608381c9f377cbb689fdf5bdd27de7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.14/ikesu-linux-arm64"
      sha256 "d5316172a3ffa40e922665e5ca7897a44e207b4899e5ddb6d80b3cf71686b657"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.14/ikesu-linux-amd64"
      sha256 "863e5878cc52812e8078ff956e78bb52cd40ec3f904f296de123eba23327898f"
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
