require "formula"
require_relative "../custom_download_strategy.rb"
class GrappleCli < Formula
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url "https://github.com/grapple-solutions/grapple-cli/archive/refs/tags/0.2.1.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 :no_check
end