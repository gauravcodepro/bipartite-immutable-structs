#! usr/bin/env julia
# Author Gaurav
# Univeristat Potsdam
# Date 2026-7-1
# first draft written, add the multiple dispatch also. 
module TreeView
mutable struct gene 
  genename::String
  genestart::Int8
  geneend::Int8
  geneID::String
  samID::String
  samLoc::Int8
  samStart::Union{Int8, Float16}
end 
mutable struct sam
  samstart::Union{Int8, Float64}
  samend::Union{Int8, Float64}
  junctionreadcount::Union{Int8, Float64}
  uniquereadcount::Union{Int8, Float64}
  readstring::String
  readseq::String
end 
mutable struct spanread
 # these struct i have to write today



mutable struct gfa
     # these struct i have to write today




mutable struct alignment
      # these struct i have to write today



# functions for the module 

# 1. sam spanning reads 
# 2. flank and read the last bit and then inverse the bit if the bit is matching to the other hang. 
# 3. spliceat! and see if the read overhalgs are matching at the end of the alignments for the pangenes.       
readSAM = readlines(samfile)
storeloc = gene[]
for i in readlines(readSAM)
  push(storeloc, gene(readsam[i].split[1], readsam[i].split[2], readsam[i].split[4])
    # add a splat notation. 

  
  
