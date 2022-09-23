module ERBLint
  module Linters
    class LineLength < Linter
      include LinterRegistry

      class ConfigSchema < LinterConfig
        property :max, converts: :to_i, accepts: Integer, default: 120
      end

      self.config_schema = ConfigSchema

      def run(processed_source)
        processed_source.file_content.to_enum(:scan, /.{#{@config.max + 1},}/).each do
          Regexp.last_match.then do |match|
            add_offense(
              processed_source.to_source_range(
                match.begin(0)...match.end(0)
              ),
              "Line is too long. [#{match[0].size}/#{@config.max}]"
            )
          end
        end
      end
    end
  end
end
