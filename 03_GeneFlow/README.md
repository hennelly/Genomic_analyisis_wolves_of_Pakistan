# Detecting gene flow using D statistics in ANGSD 

To investigate patterns of shared ancestry of wolves in Pakistan to ancestral Indian and Tibetan wolf lineages, we calculated the D statistic (Green et al. 2010). An excess of alleles derived in a lineage (P3) that are shared with one of two more recently diverged (i.e., sister) lineages (P1, P2) is suggestive of gene flow or shared phylogenetic relatedness between P3 and P1 or P2. To test for gene flow and/or phylogenetic relatedness between Eurasian wolf individuals (P1, P2) and the Indian and Tibetan lineages (P3), we estimated D statistics to test for shared ancestry between P2 and P3 in the topology structure (((P1, P2), P3), P4), where P4 indicates an outgroup as is necessary to infer the derived state of alleles in P3. With our wolf samples, we used the topologies (((Portugal wolf, X), Indian wolf), Andean Fox) and (((Portugal wolf, X), Tibetan wolf), Andean Fox), where X is an individual wolf from Eurasia. 

- First, we need to make the ancestral fasta, which we used the Gray fox genome -> [01_makeancestralfasta.sh](/03_GeneFlow/01_makeancestralfasta.sh)
- Infer D statistic using ANGSD with including reads that had at least ~90% of individuals present (-minInd 57) -> [02_doabbababa.sh](/03_GeneFlow/02_doabbababa.sh)

