class GrappleCli < Formula
  desc "Command-line interface for Grapple"
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url "https://api.github.com/repos/grapple-solutions/grapple-cli/releases/146324191"
  sha256 "aa0b7bbcff326aa17d0b9991406b0a544e0df7a65314cfe43c26339ae9617b23"
  
  def install
    bin.install "grapple-cli"
  end

  test do
    system "#{bin}/grapple-cli", "--version"
  end
end
