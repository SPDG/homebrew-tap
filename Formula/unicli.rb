class Unicli < Formula
  desc "Agent-friendly CLI for UniFi Network, Protect, and Access"
  homepage "https://spdg.github.io/unicli/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SPDG/unicli/releases/download/v0.4.0/unicli_0.4.0_darwin_arm64.tar.gz"
      sha256 "f7637d902406d97991176b27458e8af614ccb6439ae228d081c84177efb3b013"
    end
    on_intel do
      url "https://github.com/SPDG/unicli/releases/download/v0.4.0/unicli_0.4.0_darwin_amd64.tar.gz"
      sha256 "93668d733892c7f9099c0d446bfd5bc5327758778cbbc9077e4152af5a90a21f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SPDG/unicli/releases/download/v0.4.0/unicli_0.4.0_linux_arm64.tar.gz"
      sha256 "9224e2563bddaa287f2ec0335e913efdbf6abe3591977adf75519f4c894481c0"
    end
    on_intel do
      url "https://github.com/SPDG/unicli/releases/download/v0.4.0/unicli_0.4.0_linux_amd64.tar.gz"
      sha256 "14c6eaaa95644690809ceb522588e27c16583da71f5a75aa2634650baa5770e8"
    end
  end

  def install
    bin.install "unicli"
    bin.install "unicli-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unicli --version")
  end
end
