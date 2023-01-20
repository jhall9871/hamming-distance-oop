class DNAStrand
    # Getter gets created automatically
    # Setter will be created manually to allow for validation
    attr_reader :name, :nucleotides

    # Define the acceptable nucleotides in a DNA strand
    DNA_REGEX = /^[ACGT]+$/

    # Setter method for name (with validation)
    def name=(name)
        # Validations
        raise "Name must be a string" unless name.is_a?(String)
        raise "Name can not be blank" if name.empty?
        @name = name
    end

    # Setter method for nucleotides (with validation)
    def nucleotides=(nucleotides)
        raise "Acceptable nucleotides include only the letters A, C, G, and T" unless nucleotides.match(DNA_REGEX)
        @nucleotides = nucleotides
    end

    # Return Hamming Distance between self and another instance of this class
    def hamming_distance(comparison_strand)
        raise "Must be compared with another strand" unless comparison_strand.is_a?(DNAStrand)
        
        str1 = self.nucleotides
        str2 = comparison_strand.nucleotides
        
        raise "Strands must be the same length" unless str1.length == str2.length
        
        result = 0
        str1.each_char.with_index do |char, index|
            result += 1 if char != str2[index]
        end
        result
    end
end

strand1 = DNAStrand.new
strand1.name = "Doggie DNA Woof Woof!"
strand1.nucleotides = "ACGAGGGAACCTTC"

puts "Strand 1: #{strand1.inspect}"

strand2 = DNAStrand.new
strand2.name = "Kitty DNA Meow Meow!"
strand2.nucleotides = "ACGAGGGAACCTGT"

puts "Strand 2: #{strand2.inspect}"

puts "Hamming Distance between Strand 1 and Strand 2: #{strand1.hamming_distance(strand2)}"