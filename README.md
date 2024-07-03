# julia-mutable-structs with multiple dispatch

- implementing mutable structs for genes and pangenes. 
- implementing the tree graphs with the decompose so that each node can be hoisted and can be multiple dispatch.

```
function samReads(samplesame, samplevcf)
 will return the reads spanning 
(418, 952, "CCAGGCAGTGGCAGGTGGCCACCGTCCTCTCTGCCCCCGCCAAAATCACCAACCATCTGGTAGCGATGAT")
(210, 743, "CATTACCACCACCATCACCATTACCACAGGAAACGGTGCGGGCTGACGCGTACAGGAAACACCGAAAAAA")
(239, 759, "AACGCGGCGCTGATTTGCCGTGGCGAGAAAATGTCGATCGCCATTAGGGCCGGCCTGTTAGAAGCGCGTG")
(334, 899, "CCATGCTAGTGTTGAAGTTCTGCGGTACATCAGTGGCAAATGCAGAACGTTTTCTGCGGGTTGCCGATAT")
(330, 843, "GTTATCGATCCGGTCGTAAAACTGCTGGCAGTGGGTCATTACCTCGAATCTACCGTTGATATTGATGAAT")
```
- To do: adding the following : a mutable struct for linking to the annotations, a mutable struct for linking to the bubble and a mutable struct for linking to the variant annotation. 

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany
