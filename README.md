# KickstarterCurl

A simple command line tool that collects metadata (ie: number of backers, amount pledged) from a Kickstarter project page.

``` bash
$ kickstarter-curl metadata --url https://www.kickstarter.com/projects/1275337514/kegbot-internet-beer-kegerator

# Returns
{"backers":28,"pledged":2759,"queried_at":"2014-01-31 12:12:02 -0800", ...}
```

## Installation

Add this line to your application's Gemfile:

    gem 'kickstarter_curl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kickstarter_curl

## Usage

`kickstarter-curl` is a simple command line tool that spits out JSON, and optionally updates a CSV file.

``` bash
$ kickstarter-curl help metadata
Usage:
  kickstarter-curl metadata --url=URL

Options:
  --url=URL              # URL of the Kickstarter project
  [--csv-file=CSV_FILE]  # File to save metadata to as CSV

Fetches metadata related the specified Kickstarter project
```

## Version History

See CHANGELOG.md
