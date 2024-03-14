require "open-uri"
require "json"
require "digest"

class GrappleCli < Formula
  desc "Command-line interface for Grapple"
  homepage "https://github.com/grapple-solutions/grapple-cli"

  def self.latest_release_version(repo_owner, repo_name)
    url = "https://api.github.com/repos/#{repo_owner}/#{repo_name}/releases/latest"
    response = URI.parse(url).open
    latest_release = JSON.parse(response.read)
    latest_release["tag_name"]
  end

  version latest_release_version("grapple-solutions", "grapple-cli")

  url "https://github.com/grapple-solutions/grapple-cli/archive/refs/tags/#{version}.tar.gz"

  sha256 do
    url = "https://github.com/grapple-solutions/grapple-cli/archive/refs/tags/#{version}.tar.gz"
    file = Pathname.new("#{version}.tar.gz")
    downloaded_file = file.basename
    Kernel.system "curl -L #{url} -o #{downloaded_file}"
    Digest::SHA256.file(downloaded_file).hexdigest
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"grpl")
  end
  test do
    system "#{bin}/grpl", "--version"
  end
end
