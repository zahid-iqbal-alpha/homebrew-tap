cask "grapple-cli" do

  version :latest
  sha256 :no_check

  desc "grpl is a cli tool used to deploy and manage grapple on kubernetes cluster"
  homepage "https://github.com/grapple-solutions/grapple-cli"
  url do
   latest = GitHub.get_release("grapple-solutions", "grapple-cli", "0.2.1").fetch("zipball_url")
   puts "GitHub::API : #{GitHub::API}"
   [latest, header: [
     "Accept: application/octet-stream",
     "Authorization: bearer #{GitHub::API.credentials}"
   ]]
  end


end
