class Acervus < Formula
  desc "CLI tool for interacting with Acervus Cloud"
  homepage "https://github.com/paribu/acervus-cli"
  url "https://github.com/Rustalorian/acervus-cli/archive/refs/tags/v.0.0.9.tar.gz"
  sha256 "9c0bb5d99121fb0dd6df601eb17b33b938c0ace1054dc70fead746540400a3cb"
  head "https://github.com/paribu/acervus-cli.git", branch: "main"

  depends_on "go@1.20" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "acervus version 0.0.2", shell_output("#{bin}/acervus --version")
  end
end
