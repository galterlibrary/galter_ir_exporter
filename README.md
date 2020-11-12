# GalterIrExporter

Ruby Gem for exporting metadata from the data models available in a sufia6 application to a file in json.

## Installation

Add this line to your sufia6 application's Gemfile:

```ruby
gem 'galter_ir_exporter'
```

And then execute:

    $ bundle

Run the installer, creating the necessary migration files:

    $ bundle exec rails generate galter_ir_exporter:install

Run the migration:

    $ bundle exec rails db:migrate

## Usage

Run the survey script to write the IDs for all GenericFiles and Collections to the database:

    $ bundle exec galter_ir_exporter_survey -v

Run the export:

    $ bundle exec galter_ir_exporter_export

This will create a .json file with metadata for each instance of GenericFile and Collection.

### Options

Pass the `--help` option to view the ways to override the exported fields for your customized data models.

    $ bundle exec galter_ir_exporter_export --help

## Development

TODO: Add when [#7](https://github.com/galterlibrary/galter_ir_exporter/issues/7) is resolved.

### Testing Your Changes In Your Samvera/Sufia6 App

Branch from master, make any changes to the gem, then push your branch to this repository. Then, add the
following to your samvera/sufia6 app's Gemfile. Once everything is installed add the following to the
digital-repository Gemfile:

`gem 'galter_ir_exporter', git: 'https://github.com/galterlibrary/galter_ir_exporter.git', branch: 'your-branch-name'`

Run bundler again and the changes pushed to your-branch-name will be pulled. If you have previously installed
'galter_ir_exporter' you may need to uninstall the gem with: `gem uninstall galter_ir_exporter`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/galterlibrary/galter_ir_exporter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the GalterIrExporter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/galter_ir_exporter/blob/master/CODE_OF_CONDUCT.md).
