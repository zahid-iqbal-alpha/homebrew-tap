class GrappleCli < Formula
  desc "Command-line interface for Grapple"
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url "https://github.com/grapple-solutions/grapple-cli/archive/refs/tags/0.2.1.tar.gz"
  sha256 "f19d949c29a3bb2770c7ec4476076409d9e5c364b19bfc2043d385f93a2194bd"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"grpl.sh")
  test do
    system "#{bin}/grpl", "--version"
  end
end
