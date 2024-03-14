require "formula"
require_relative "../custom_download_strategy.rb"
class GrappleCli < Formula
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url "https://api.github.com/repos/grapple-solutions/grapple-cli/zipball/0.2.1", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 :no_check
end