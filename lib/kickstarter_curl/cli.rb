require 'open-uri'
require 'nokogiri'
require 'hashie'
require 'thor'
require 'json'

module KickstarterCurl
  class Cli < Thor
    desc 'metadata', 'Fetches metadata (number of backers, amount pledged, etc.) related the specified Kickstarter project'
    option :url, :required => true, :desc => 'URL of the Kickstarter project'
    option :csv_file, :desc => "File to save metadata to as CSV"
    def metadata()
      metadata = Hashie::Mash.new
      metadata.queried_at = Time.now

      url = options[:url]
      doc = Nokogiri::HTML(open(url))

      metadata.url = url
      metadata.backers = doc.css('*[data-backers-count]').attr('data-backers-count').value.to_i
      metadata.pledged = doc.css('*[data-pledged]').attr('data-pledged').value.to_i

      puts metadata.to_hash.to_json

      # optionally save CSV
      if csv_output = options[:csv_file]
        File.open(csv_output, 'a') do |f|
          f.puts [metadata.queried_at, metadata.backers, metadata.pledged, metadata.url].join(', ')
        end
      end
    end
  end
end
