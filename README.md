# readvariantannot.jl

- implementing mutable structs for genes and pangenes. 
- uses Int64 so that no bufferflow @btime: a samfile with 5GB parsed in less than 10 minutes. 
- a kmerplot function added, which is available as a functional closure julia programming and calls a kmer to the reads which harbours the variants.
- to add: a gene functional annotation link so that the variants can be linked to the gene and also annotated. will implement a closure. 

```
include readvariantannot.jl

function samReadsAll(samplesame, samplevcf)
# will prepare all and will return the reads spanning 
(418, 952, "CCAGGCAGTGGCAGGTGGCCACCGTCCTCTCTGCCCCCGCCAAAATCACCAACCATCTGGTAGCGATGAT")
(210, 743, "CATTACCACCACCATCACCATTACCACAGGAAACGGTGCGGGCTGACGCGTACAGGAAACACCGAAAAAA")
(239, 759, "AACGCGGCGCTGATTTGCCGTGGCGAGAAAATGTCGATCGCCATTAGGGCCGGCCTGTTAGAAGCGCGTG")
(334, 899, "CCATGCTAGTGTTGAAGTTCTGCGGTACATCAGTGGCAAATGCAGAACGTTTTCTGCGGGTTGCCGATAT")
(330, 843, "GTTATCGATCCGGTCGTAAAACTGCTGGCAGTGGGTCATTACCTCGAATCTACCGTTGATATTGATGAAT")

function samReadsUser(samplesame, samplevcf, variantdefined)
# will prepare for that position specific and will return the reads spanning 
(418, 952, "CCAGGCAGTGGCAGGTGGCCACCGTCCTCTCTGCCCCCGCCAAAATCACCAACCATCTGGTAGCGATGAT")
(210, 743, "CATTACCACCACCATCACCATTACCACAGGAAACGGTGCGGGCTGACGCGTACAGGAAACACCGAAAAAA")
(239, 759, "AACGCGGCGCTGATTTGCCGTGGCGAGAAAATGTCGATCGCCATTAGGGCCGGCCTGTTAGAAGCGCGTG")
(334, 899, "CCATGCTAGTGTTGAAGTTCTGCGGTACATCAGTGGCAAATGCAGAACGTTTTCTGCGGGTTGCCGATAT")
(330, 843, "GTTATCGATCCGGTCGTAAAACTGCTGGCAGTGGGTCATTACCTCGAATCTACCGTTGATATTGATGAAT")
```

Gaurav
