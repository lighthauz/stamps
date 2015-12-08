module Stamps

  module Helpers

    def get_ordered_params(params, keys)
      ordered_params = Hash.new

      keys.each do |key|
        ordered_params[key] = params[key]
      end

      ordered_params
    end


    def compact_hash(hash)
      compacted = Hash.new

      hash.each do |k, v|
        if v.is_a?(Hash)
          compacted[k] = compact_hash(v)
        else
          if v.present?
            compacted[k] = v
          end
        end
      end

      compacted
    end

  end
end

