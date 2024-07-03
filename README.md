# julia-mutable-structs with multiple dispatch

- implementing mutable structs for genes and pangenes. 
- uses Int64 so that no bufferflow @btime: a samfile with 5GB parsed in less than 10 minutes. 
- To do: adding the following : a mutable struct for linking to the annotations, a mutable struct for linking to the bubble and a mutable struct for linking to the variant annotation. 

```
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

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
