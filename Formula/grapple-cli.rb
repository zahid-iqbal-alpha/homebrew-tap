class GrappleCli < Formula
  desc "Command-line interface for Grapple"
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url do
   url = GitHub.get_release("grapple-solutions", "grapple-cli", "0.2.1").fetch("zipball_url")
  end
  sha256 "aa0b7bbcff326aa17d0b9991406b0a544e0df7a65314cfe43c26339ae9617b23"

  test do
    system "#{bin}/grpl", "--version"
  end
end
