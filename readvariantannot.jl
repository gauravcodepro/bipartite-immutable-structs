#! /usr/bin/env julia
# Author Gaurav
# Universitat Potsdam
# Date 2024-7-3

function samReadUser(samfile, variantfile, variantdefined)
    # reading the sam for the variants and indexing the variants as Any[] and then mapping the reads to variants by the position
    # no memory loading needed making the annotations faster.
    # using Int64 so that no buffer overflow occurs.
    readmapStart = Any[]
    readmapEnd = Any[]
    readMIDTags = Any[]
    readString = String[]
    readfile = readlines(open(samfile))
    for i in 1:length(readfile)
        if !startswith(readfile[i], "@")
            push!(readmapStart,split(split(readfile[i], r"\t")[1], r"_")[3])
            push!(readmapEnd, split(split(readfile[i], r"\t")[1], r"_")[4])
            push!(readMIDTags,split(readfile[i], r"\t")[6])
            push!(readString, split(readfile[i], r"\t")[10])
        end
    end
    varaintPos = Any[]
    readvariants = readlines(open(variantfile))
    for i in 1:readvariants
        if !startswith(readvariants[i], r'#|##')
          push!(variantPos, split(readvariants[i], "\t")[2])
        end
    end
   variantdefined = Any[]
   iterstart = [(parse(Int64,readmapStart[i]),parse(Int64,readmapEnd[i]), readString[i]) for i in 1:length(readmapStart)]
   getReads = Any[]
    for i in 1:length(iterstart)
        for j in 1:length(variantdefined)
            if iterstart[i][1] < variantdefined[j] && iterstart[i][2] > variantPos[j]
                push!(getReads, iterStart[i])
            end
        end
    end
end

function samReadsAll(samfile, variantfile)
    readmapStart = Any[]
    readmapEnd = Any[]
    readMIDTags = Any[]
    readString = String[]
    readfile = readlines(open(samfile))
    for i in 1:length(readfile)
        if !startswith(readfile[i], "@")
            push!(readmapStart,split(split(readfile[i], r"\t")[1], r"_")[3])
            push!(readmapEnd, split(split(readfile[i], r"\t")[1], r"_")[4])
            push!(readMIDTags,split(readfile[i], r"\t")[6])
            push!(readString, split(readfile[i], r"\t")[10])
        end
    end
    varaintPos = Any[]
    readvariants = readlines(open(variantfile))
    for i in 1:readvariants
        if !startswith(readvariants[i], r'#|##')
          push!(variantPos, split(readvariants[i], "\t")[2])
        end
    end
   iterstart = [(parse(Int64,readmapStart[i]),parse(Int64,readmapEnd[i]), readString[i]) for i in 1:length(readmapStart)]
   getReads = Any[]
    for i in 1:length(iterstart)
        for j in 1:length(variantPos)
            if iterstart[i][1] < variantPos[j] && iterstart[i][2] > variantPos[j]
                push!(getReads, iterStart[i])
            end
        end
    end


function samReadsKmerPlot(samfile, variantfile)
    readmapStart = Any[]
    readmapEnd = Any[]
    readMIDTags = Any[]
    readString = String[]
    readfile = readlines(open(samfile))
    for i in 1:length(readfile)
        if !startswith(readfile[i], "@")
            push!(readmapStart,split(split(readfile[i], r"\t")[1], r"_")[3])
            push!(readmapEnd, split(split(readfile[i], r"\t")[1], r"_")[4])
            push!(readMIDTags,split(readfile[i], r"\t")[6])
            push!(readString, split(readfile[i], r"\t")[10])
        end
    end
    varaintPos = Any[]
    readvariants = readlines(open(variantfile))
    for i in 1:readvariants
        if !startswith(readvariants[i], r'#|##')
          push!(variantPos, split(readvariants[i], "\t")[2])
        end
    end
   iterstart = [(parse(Int64,readmapStart[i]),parse(Int64,readmapEnd[i]), readString[i]) for i in 1:length(readmapStart)]
   getReads = Any[]
    for i in 1:length(iterstart)
        for j in 1:length(variantPos)
            if iterstart[i][1] < variantPos[j] && iterstart[i][2] > variantPos[j]
                push!(getReads, iterStart[i])
            end
        end
    end
    function kmerplot(frequency)
        ### adding a closure here for the kmer so that it can be called for any stored variable with in the function.
        ### this can tell you the type of the kmers associated with the variants. 
        selreadString = [getReads[i][3] i in 1:length(getReads)]
        selreadsStart = [getReads[i][1] i in 1:length(getReads)]
        selreadEnd = [getReads[i][2] i in 1:length(getReads)]
        storingsKmer = Any[]
        @asset length(selreadsStart) == length(selreadEnd) == length(selreadString)
        for i in 1:length(selreadstring)-parse(Int64,frequency)
            push!(storingsKmer, [selreadStart[i], selreadEnd[i], selreadString[i:i+parse(Int64, frequency)]
        end
    end
end

