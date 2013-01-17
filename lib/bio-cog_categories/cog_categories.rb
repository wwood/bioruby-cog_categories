module Bio
  module COG
    # INFORMATION STORAGE AND PROCESSING
    # [J] Translation, ribosomal structure and biogenesis
    # [A] RNA processing and modification
    # [K] Transcription
    # [L] Replication, recombination and repair
    # [B] Chromatin structure and dynamics
    #
    # CELLULAR PROCESSES AND SIGNALING
    # [D] Cell cycle control, cell division, chromosome partitioning
    # [Y] Nuclear structure
    # [V] Defense mechanisms
    # [T] Signal transduction mechanisms
    # [M] Cell wall/membrane/envelope biogenesis
    # [N] Cell motility
    # [Z] Cytoskeleton
    # [W] Extracellular structures
    # [U] Intracellular trafficking, secretion, and vesicular transport
    # [O] Posttranslational modification, protein turnover, chaperones
    #
    # METABOLISM
    # [C] Energy production and conversion
    # [G] Carbohydrate transport and metabolism
    # [E] Amino acid transport and metabolism
    # [F] Nucleotide transport and metabolism
    # [H] Coenzyme transport and metabolism
    # [I] Lipid transport and metabolism
    # [P] Inorganic ion transport and metabolism
    # [Q] Secondary metabolites biosynthesis, transport and catabolism
    #
    # POORLY CHARACTERIZED
    # [R] General function prediction only
    # [S] Function unknown
    class Category
      DEFINITION = {
        'INFORMATION STORAGE AND PROCESSING' => {
          'J' => 'Translation, ribosomal structure and biogenesis',
          'A' => 'RNA processing and modification',
          'K' => 'Transcription',
          'L' => 'Replication, recombination and repair',
          'B' => 'Chromatin structure and dynamics',
        },
        
        'CELLULAR PROCESSES AND SIGNALING' => {
          'D' => 'Cell cycle control, cell division, chromosome partitioning',
          'Y' => 'Nuclear structure',
          'V' => 'Defense mechanisms',
          'T' => 'Signal transduction mechanisms',
          'M' => 'Cell wall/membrane/envelope biogenesis',
          'N' => 'Cell motility',
          'Z' => 'Cytoskeleton',
          'W' => 'Extracellular structures',
          'U' => 'Intracellular trafficking, secretion, and vesicular transport',
          'O' => 'Posttranslational modification, protein turnover, chaperones',
        },
        
        'METABOLISM' => {
          'C' => 'Energy production and conversion',
          'G' => 'Carbohydrate transport and metabolism',
          'E' => 'Amino acid transport and metabolism',
          'F' => 'Nucleotide transport and metabolism',
          'H' => 'Coenzyme transport and metabolism',
          'I' => 'Lipid transport and metabolism',
          'P' => 'Inorganic ion transport and metabolism',
          'Q' => 'Secondary metabolites biosynthesis, transport and catabolism',
        },
        
        'POORLY CHARACTERIZED' => {
          'R' => 'General function prediction only',
          'S' => 'Function unknown',
        },
      }
      
      # Return the category, defined by the one letter e.g.
      #
      #    Bio::COG::Category.one_letter_to_category('E') => 'Amino acid transport and metabolism'
      def self.one_letter_to_category(one_letter)
        DEFINITION.each do |big_category, hash|
          return hash[one_letter] if hash.key?(one_letter)
        end
        raise COGException, "Unable to find description for one letter #{one_letter}"
      end
    end
    
    class COGException < Exception; end
  end
end
