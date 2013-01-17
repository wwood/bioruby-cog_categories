# bio-cog_categories

[![Build Status](https://secure.travis-ci.org/wwood/bioruby-cog_categories.png)](http://travis-ci.org/wwood/bioruby-cog_categories)

API to Clusters of Orthologous Groups of proteins (COGs) functional categories i.e. this data:
```
INFORMATION STORAGE AND PROCESSING
 [J] Translation, ribosomal structure and biogenesis 
 [A] RNA processing and modification 
 [K] Transcription 
 [L] Replication, recombination and repair 
 [B] Chromatin structure and dynamics 

CELLULAR PROCESSES AND SIGNALING
 [D] Cell cycle control, cell division, chromosome partitioning 
 [Y] Nuclear structure 
 [V] Defense mechanisms 
 [T] Signal transduction mechanisms 
 [M] Cell wall/membrane/envelope biogenesis 
 [N] Cell motility 
 [Z] Cytoskeleton 
 [W] Extracellular structures 
 [U] Intracellular trafficking, secretion, and vesicular transport 
 [O] Posttranslational modification, protein turnover, chaperones 

METABOLISM
 [C] Energy production and conversion 
 [G] Carbohydrate transport and metabolism 
 [E] Amino acid transport and metabolism 
 [F] Nucleotide transport and metabolism 
 [H] Coenzyme transport and metabolism 
 [I] Lipid transport and metabolism 
 [P] Inorganic ion transport and metabolism 
 [Q] Secondary metabolites biosynthesis, transport and catabolism 

POORLY CHARACTERIZED
 [R] General function prediction only 
 [S] Function unknown 
```

For example,
```ruby
Bio::COG::Category.one_letter_to_category('E').should eq('Amino acid transport and metabolism')

```

## Installation

```sh
gem install bio-cog_categories
```

## Usage

```ruby
require 'bio-cog_categories'
```

The API doc is online. For more code examples see the test files in
the source tree.
        
## Project home page

Information on the source tree, documentation, examples, issues and
how to contribute, see

  http://github.com/wwood/bioruby-cog_categories

The BioRuby community is on IRC server: irc.freenode.org, channel: #bioruby.

## Cite

If you use this software, please cite one of
  
* [BioRuby: bioinformatics software for the Ruby programming language](http://dx.doi.org/10.1093/bioinformatics/btq475)
* [Biogem: an effective tool-based approach for scaling up open source software development in bioinformatics](http://dx.doi.org/10.1093/bioinformatics/bts080)

## Biogems.info

This Biogem is published at (http://biogems.info/index.html#bio-cog_categories)

## Copyright

Copyright (c) 2013 Ben J. Woodcroft. See LICENSE.txt for further details.

